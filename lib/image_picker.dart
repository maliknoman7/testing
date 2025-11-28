
// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const ImagePickerPage(),
//     );
//   }
// }

// class ImagePickerPage extends StatefulWidget {
//   const ImagePickerPage({super.key});

//   @override
//   State<ImagePickerPage> createState() => _ImagePickerPageState();
// }

// class _ImagePickerPageState extends State<ImagePickerPage> {
//   File? _image; // Stores the selected image
//   final ImagePicker _picker = ImagePicker();

//   // Pick image from gallery
//   Future<void> _pickImageFromGallery() async {
//     final XFile? pickedFile =
//         await _picker.pickImage(source: ImageSource.gallery);
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   // Pick image from camera
//   Future<void> _pickImageFromCamera() async {
//     final XFile? pickedFile =
//         await _picker.pickImage(source: ImageSource.camera);
//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Image Picker Example"),
//         backgroundColor: Colors.teal,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             _image != null
//                 ? Image.file(
//                     _image!,
//                     width: 200,
//                     height: 200,
//                     fit: BoxFit.cover,
//                   )
//                 : const Text("No image selected"),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton.icon(
//                   onPressed: _pickImageFromGallery,
//                   icon: const Icon(Icons.photo),
//                   label: const Text("Gallery"),
//                 ),
//                 const SizedBox(width: 20),
//                 ElevatedButton.icon(
//                   onPressed: _pickImageFromCamera,
//                   icon: const Icon(Icons.camera_alt),
//                   label: const Text("Camera"),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
