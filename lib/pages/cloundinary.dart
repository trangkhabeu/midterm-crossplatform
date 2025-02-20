import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ClouDinary extends StatefulWidget {
  const ClouDinary({super.key});

  @override
  State<ClouDinary> createState() => _ClouDinaryState();
}

class _ClouDinaryState extends State<ClouDinary> {
  File? _imageFile;
  String? _imageUrl;

  Future<void> _pickImage(ImageSource source) async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
      _uploadImage(); // Gọi hàm upload ngay sau khi chọn ảnh
    }
  }

  Future<void> _uploadImage() async {
    if (_imageFile == null) return;
    final url = Uri.parse('https://api.cloudinary.com/v1_1/dtjrvstuo/upload');
    final request = http.MultipartRequest('POST', url)
      ..fields['upload_preset'] = 'changggg'
      ..files.add(await http.MultipartFile.fromPath('file', _imageFile!.path));

    final response = await request.send();
    if (response.statusCode == 200) {
      final responseData = await response.stream.toBytes();
      final responseString = String.fromCharCodes(responseData);
      final jsonMap = jsonDecode(responseString);
      setState(() {
        _imageUrl = jsonMap['url'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Image to Cloudinary"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _pickImage(ImageSource.gallery),
                child: const Text("Select from gallery"),
              ),
              if (_imageFile != null) Image.file(_imageFile!),
              if (_imageUrl != null) ...[
                Image.network(_imageUrl!),
                Text("Cloudinary URL: $_imageUrl",
                    style: const TextStyle(fontSize: 16)),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
