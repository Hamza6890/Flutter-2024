import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:image_picker_web/image_picker_web.dart';

class HomeLogic extends GetxController {
  Uint8List? bytesFromPicker ;
  uploadImageFirebase()async{
    bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
  }

}
