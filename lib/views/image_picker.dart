// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final ImagePicker _imagePicker = ImagePicker();
//   XFile? _pickedImage;

//   Future<void> _pickImageFromGallery() async {
//     final image = await _imagePicker.pickImage(source: ImageSource.gallery);
//     setState(() {
//       _pickedImage = image != null ? XFile(image.path) : null;
//     });
//   }

//   Future<void> _captureImageFromCamera() async {
//     final image = await _imagePicker.pickImage(source: ImageSource.camera);
//     setState(() {
//       _pickedImage = image != null ? XFile(image.path) : null;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Image Picker Example')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             if (_pickedImage != null)
//               Image.file(File(_pickedImage!.path), height: 200),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _pickImageFromGallery,
//               child: const Text('اختيار صورة من المعرض'),
//             ),
//             ElevatedButton(
//               onPressed: _captureImageFromCamera,
//               child: const Text('التقاط صورة باستخدام الكاميرا'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
