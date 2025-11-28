// import 'dart:io';

// import 'package:flutter/material.dart';
// // import 'package:image_picker/image_picker.dart';

// class MyScreenPic extends StatefulWidget {
//   const MyScreenPic({super.key});

//   @override
//   State<MyScreenPic> createState() => _MyScreenPicState();
// }

// class _MyScreenPicState extends State<MyScreenPic> {
//   File? image;
//   // final ImagePicker picker = ImagePicker();

 
//   Future<void> getImageGallery() async {
//     // final XFile? pickedImage = await picker.pickImage(
//       source: ImageSource.gallery, 
//     // );

//     if (pickedImage != null) {
//       setState(() {
//         image = File(pickedImage.path);
//       });
//     }
//   }

 
//   Future<void> getImageCamera() async {
//     final XFile? pickedImage = await picker.pickImage(
//       source: ImageSource.camera,
//     );

//     if (pickedImage != null) {
//       setState(() {
//         image = File(pickedImage.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Pick Image Example")),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             image != null
//                 ? Image.file(image!)
//                 : const Text("No image selected"),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: getImageGallery,
//               child: const Text("Pick from Gallery"),
//             ),
//             ElevatedButton(
//               onPressed: getImageCamera,
//               child: const Text("Take a Photo"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
