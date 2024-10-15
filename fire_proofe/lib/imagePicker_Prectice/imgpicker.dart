// import 'dart:io';
// import 'dart:typed_data';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker_web/image_picker_web.dart';
//
// class imagepicker_Screen extends StatefulWidget {
//   const imagepicker_Screen({super.key});
//
//   @override
//   State<imagepicker_Screen> createState() => _imagepicker_ScreenState();
// }
//
// class _imagepicker_ScreenState extends State<imagepicker_Screen> {
//   Uint8List? bytesFromPicker;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         GestureDetector(
//           onTap: () async {
//              if (kIsWeb){
//                bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
//                setState(() {});
//              }
//              else if(Platform.isAndroid || Platform.isIOS){
//                print("This is Android");
//              }
//           },
//           child: Container(
//             width: 200,
//             height: 200,
//             color: Colors.indigo,
//             child: bytesFromPicker == null?SizedBox():Image.memory(bytesFromPicker!),
//           ),
//         ),
//         ElevatedButton(onPressed: ()  {
//            imagePicker(bytesFromPicker!, "Hamza");
//         }, child: const Text("Save Image"))
//       ],
//     );
//   }
// }
//
//
//
// Future<String?> imagePicker(Uint8List image, String FolderPath)async{
//         String fileName = "Hamza.jpg";
//         try {
//           final  Reference ref = await FirebaseStorage.instance.ref().child(FolderPath).child(fileName);
//           ref.putData(image);
//           final String myDownload = await ref.getDownloadURL();
//           print(myDownload);
//         } on Exception catch (e) {
//           print(e);
//           // TODO
//         }
//
//
// }
