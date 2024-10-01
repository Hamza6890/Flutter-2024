import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../model/common screens/myTextFields.dart';
import '../../model/common screens/mybtn.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            // Gap(10.0),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   height: 270,
            //    child: Image.asset("assets/loginD.png"),
            // ),
            const Gap(16.0),
            MytextFeilds(
              myhinttext: "Enter E-mail",
              //myController: logic.emailC,
            ),
            const Gap(16.0),
            MytextFeilds(
              myhinttext: "Enter Password",
             //  myController: logic.passC,
            ),
            const Gap(16.0),
            MyButtons(
              firstBtn: () {
                Get.offNamed('/dashboard');
                print("This is my email ");
                print("This is my Password ");
              //  logic.loginUserwithFirebase();
              },
              buttonwidget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.ads_click), Text("Sign In")],
              ),
            ),
            const Gap(16),
            TextButton(
                onPressed: () {
                  print("Text Button working");
                 // logic.isSignined.value = !logic.isSignined.value;
                },
                child: const Text(
                  "Not Signed In? Signed Up",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
