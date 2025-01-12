import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class ImagePickerExample extends StatefulWidget {
  @override
  _ImagePickerExampleState createState() => _ImagePickerExampleState();
}

class _ImagePickerExampleState extends State<ImagePickerExample> {
  final ImagePicker _picker = ImagePicker();
  XFile? _image;

  Future<void> _pickImage(ImageSource source) async {
    final XFile? selectedImage = await _picker.pickImage(source: source);
    setState(() {
      _image = selectedImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('مثال على image_picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _image == null
                ? Text('لم يتم اختيار صورة.')
                : Image.file(File(_image!.path)),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.gallery),
              child: Text('اختر صورة من المعرض'),
            ),
            ElevatedButton(
              onPressed: () => _pickImage(ImageSource.camera),
              child: Text('التقط صورة باستخدام الكاميرا'),
            ),
          ],
        ),
      ),
    );
  }
}
