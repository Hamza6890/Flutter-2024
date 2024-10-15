import 'dart:io';
import 'dart:typed_data';
import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker_web/image_picker_web.dart';
import 'Screens/Login_screen.dart';
import 'Screens/home_screen.dart';
import 'Screens/next_screens.dart';
import 'Screens/signup_screen.dart';
import 'Screens/splash_screen.dart';
import 'firebase_options.dart';
import 'imagePicker_Prectice/Imgpicker5P.dart';
import 'imagePicker_Prectice/image4Picker.dart';
import 'imagePicker_Prectice/imgPicker2P.dart';
import 'imagePicker_Prectice/imgpicker.dart';
import 'imagePicker_Prectice/imgpicker3.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Uint8List? bytesFromPicker;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Master Mind",
      home: Scaffold(
        body: Column(
          children: [
            Image5picker(),

            // GestureDetector(
            //   onTap: () async {
            //     if (kIsWeb) {
            //       bytesFromPicker = await ImagePickerWeb.getImageAsBytes();
            //       setState(() {});
            //     } else if (Platform.isAndroid || Platform.isIOS) {
            //       print("This android");
            //     }
            //   },
            //   child: Container(
            //     width: 150,
            //     height: 150,
            //     color: Colors.indigo,
            //     child: bytesFromPicker == null
            //         ? SizedBox()
            //         : Image.memory(bytesFromPicker!),
            //   ),
            // ),
            // ElevatedButton(
            //     onPressed: () {
            //       imagePicker(bytesFromPicker!, "Hamza");
            //     },
            //     child: Text("Save Image"))
          ],
        ),
      ),
      // initialRoute: '/login',
      // getPages: [
      //   //GetPage(name: '/', page: () => SplashScreen()),
      //   GetPage(name: '/login', page: () => LoginScreen()),
      //   GetPage(name: '/home', page: () => HomeScreen()),
      //   GetPage(name: '/next', page: () => NextScreens()),
      //   GetPage(name: '/signup', page: () => SignUpScreen()),
      //   // Add other routes here
      // ],
    );
  }
}

// Future<String?> imagePicker(Uint8List image, String FolderPath) async {
//   String fileName = "Hamza.jpg";
//   try {
//     final Reference ref =
//         await FirebaseStorage.instance.ref().child(FolderPath).child(fileName);
//     ref.putData(image);
//     final String myDownload = await ref.getDownloadURL();
//     print(myDownload);
//   } on Exception catch (e) {
//     print(e);
//     // TODO
//   }
// }
