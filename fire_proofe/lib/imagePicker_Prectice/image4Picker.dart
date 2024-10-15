import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class Image4PickerP extends StatefulWidget {
  const Image4PickerP({super.key});

  @override
  State<Image4PickerP> createState() => _Image4PickerPState();
}

class _Image4PickerPState extends State<Image4PickerP> {
  Uint8List? bytesFromPicker;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ()async{
            if(kIsWeb){
              bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
              setState(() {});
            }
            else if (Platform.isAndroid || Platform.isIOS){
              print("This is Android phone.");
            }
              },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.deepPurple,
            child: bytesFromPicker == null?SizedBox():Image.memory(bytesFromPicker!),
          ),
        ),
        ElevatedButton(onPressed: (){
          ImgPIcker4(bytesFromPicker!, "Abdullah");
        }, child: Text("save data"))
      ],
    );
  }
}


Future<String?> ImgPIcker4 (Uint8List image, String FolderPath)async{
  String fileName = "Abdullah.jpg";
  try {
    final Reference ref = await FirebaseStorage.instance.ref().child(FolderPath).child(fileName);
    ref.putData(image);
    final String mydownload = await ref.getDownloadURL();
    print(mydownload);
  } on Exception catch (e) {
    print(e);
    // TODO
  }
}