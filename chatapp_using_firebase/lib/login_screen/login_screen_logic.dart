import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home/home_view.dart';

class Login_screenLogic extends GetxController {
 TextEditingController emailC =TextEditingController();
 TextEditingController passC =TextEditingController();
 TextEditingController userC =TextEditingController();
 RxBool isSignined = true.obs;

 FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
 Future<void> createUserwithFirebase()async{
  if(emailC.text.isEmpty || passC.text.isEmpty){
   Get.snackbar(
    "Email login Successfully!",
    "Email login Successfully",
    backgroundColor: Colors.blue[50],
    colorText: Colors.black
   );
  }else{
   var user = await _firebaseAuth.createUserWithEmailAndPassword(email: emailC.text, password: passC.text);
    if(user !=null){
     Get.to(()=> HomePage(),transition: Transition.downToUp,duration: Duration(seconds: 1));
    }
  }

 }
 Future<void> loginUserwithFirebase()async{
  if(emailC.text.isEmpty || passC.text.isEmpty){
   Get.snackbar(
    "Email login Error!",
    "Email login Successfully",
    backgroundColor: Colors.blue[50],
    colorText: Colors.black
   );
  }else{
   var user = await _firebaseAuth.signInWithEmailAndPassword(email: emailC.text, password: passC.text);
    if(user !=null){
     Get.to(()=> HomePage(),transition: Transition.downToUp,duration: Duration(seconds: 1));
    }
  }

 }

}