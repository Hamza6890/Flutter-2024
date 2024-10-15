import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker_web/image_picker_web.dart';

class Image5picker extends StatefulWidget {
  const Image5picker({super.key});

  @override
  State<Image5picker> createState() => _Image5pickerState();
}

class _Image5pickerState extends State<Image5picker> {
  Uint8List? bytesFromPicker;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(

          onTap: ()async{
            if(kIsWeb){
              bytesFromPicker  = await ImagePickerWeb.getImageAsBytes();
              setState(() {});
            }
            else if(Platform.isAndroid || Platform.isIOS){
              print("This is Android Phone");
            }
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.teal,
            child: bytesFromPicker == null?SizedBox():Image.memory(bytesFromPicker!),
          ),
        ),
        ElevatedButton(onPressed: (){
          ImaPicker5(bytesFromPicker!, "Haroon");
        }, child: Text("Save The Image"))
      ],
    );
  }
}


Future<String?> ImaPicker5 (Uint8List image, String folderPath)async{
  String fileName = "Haroon.jpg";
  try {
    final Reference ref = await FirebaseStorage.instance.ref().child(folderPath).child(fileName);
    ref.putData(image);
    final String myDownload = await ref.getDownloadURL();
    print(myDownload);
  } on Exception catch (e) {
    print(e);
    // TODO
  }
}