// import 'dart:io';
//
// import 'package:flutter/material.dart';
//
// class ImagePopup extends StatelessWidget {
//   final String imageUrl;
//
//   const ImagePopup({super.key, required this.imageUrl})
//
//   void _showPopup(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierColor: Colors.black.withOpacity(0.6), // background dim
//       builder: (context) {
//         return Dialog(
//           backgroundColor: Colors.transparent,
//           insetPadding: const EdgeInsets.all(20),
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             height: MediaQuery
//                 .of(context)
//                 .size
//                 .width * 0.6,
//             decoration: BoxDecoration(
//               color: Colors.transparent,
//               border: Border.all(color: Colors.white, width: 1),
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Image.file(_imageFile, fit: BoxFit.cover),
//             ),
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () => _showPopup(context),
//         child: const Text('Show Image Popup'),
//       ),
//     );
//   }
// }
