// import 'dart:io';
// import 'dart:typed_data';
//
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker_web/image_picker_web.dart';
//
// class imagepicker3 extends StatefulWidget {
//   const imagepicker3({super.key});
//
//   @override
//   State<imagepicker3> createState() => _imagepicker3State();
// }
//
// class _imagepicker3State extends State<imagepicker3> {
//   Uint8List? bytesFromPicker;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: ()async{
//             if(kIsWeb){
//               bytesFromPicker  = await ImagePickerWeb.getImageAsBytes();
//               setState(() {});
//             }
//             else if(Platform.isAndroid || Platform.isIOS) {
//               print("Tis is android`");
//             }
//           },
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.redAccent,
//             child: bytesFromPicker == null?SizedBox():Image.memory(bytesFromPicker!),
//           ),
//         ),
//         ElevatedButton(onPressed: (){
//           ImgPicker3(bytesFromPicker!, "Latif");
//         }, child: Text("Save Image"))
//       ],
//     );
//   }
// }
//
//
//
// Future<String?> ImgPicker3(Uint8List image, String FolderPath) async{
//   String fileName = "Latif.jpg";
//   try {
//     final Reference ref = await FirebaseStorage.instance.ref().child(FolderPath).child(fileName);
//     ref.putData(image);
//     final String myDownolad = await ref.getDownloadURL();
//     print(myDownolad);
//   } on Exception catch (e) {
//     print(e);
//     // TODO
//   }
// }