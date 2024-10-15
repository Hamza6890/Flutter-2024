// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker_web/image_picker_web.dart';
//
// class ImagePiker2P extends StatefulWidget {
//   const ImagePiker2P({super.key});
//
//   @override
//   State<ImagePiker2P> createState() => _ImagePiker2PState();
// }
//
// class _ImagePiker2PState extends State<ImagePiker2P> {
//   Uint8List? bytesFromPicker;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: ()async{
//             if(kIsWeb){
//               bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
//               setState(() {});
//             }
//             else if(Platform.isAndroid || Platform.isIOS){
//               print("this is Android");
//             }
//           },
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.amber,
//             child: bytesFromPicker == null?SizedBox():Image.memory(bytesFromPicker!),
//           ),
//         ),
//         ElevatedButton(onPressed: (){
//           ImagePick(bytesFromPicker!, "Basit");
//         }, child: Text("Save Data"))
//       ],
//     );
//   }
// }
//
//
// Future<String?> ImagePick (Uint8List image, String FolderPath)async {
//   String fileName = "Basit.jpg";
//   try {
//     final Reference ref = await FirebaseStorage.instance.ref().child(FolderPath).child(fileName);
//     ref.putData(image);
//     final String myDownload = await ref.getDownloadURL();
//     print(myDownload);
//   } on Exception catch (e) {
//     print(e);
//     // TODO
//   }
// }