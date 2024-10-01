import 'package:chatapp_using_firebase/utiles/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../commanwidgets/buttons.dart';
import '../commanwidgets/fields_widgets.dart';
import 'login_screen_logic.dart';

class Login_screenPage extends StatelessWidget {
  final logic = Get.put(Login_screenLogic());

  @override
  Widget build(BuildContext context) {
    final screenType = ResponsiveBreakpoints.of(context);
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: screenType.smallerThan(TABLET)
              ? showMobileLoginScreen(context)
              : screenType.largerThan(MOBILE) && screenType.smallerThan(DESKTOP)
                  ? showTabLoginScreen(context)
                  : showWebLoginScreen(context),
        ),
      ),
    );
  }

  Widget showMobileLoginScreen(BuildContext context) {
    return myForm(context);
  }

  Widget showWebLoginScreen(BuildContext context) {
    return myForm(context);
  }

  Widget showTabLoginScreen(BuildContext context) {
    return myForm(context);
  }

  Widget myForm(BuildContext context) {
    return Obx(() {
      return logic.isSignined.value
          ? mySignInForm(context)
          : mySignUPForm(context);
    });
  }

  mySignInForm(context) {
    return Column(
      children: [
        Gap(10.0),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 270,
          child: Image.asset("assets/loginD.png"),
        ),
        Gap(16.0),
        MytextFeilds(
          myhinttext: "Enter E-mail",
          myController: logic.emailC,
        ),
        Gap(16.0),
        MytextFeilds(
          myhinttext: "Enter Password",
          myController: logic.passC,
        ),
        Gap(16.0),
        MyButtons(
          firstBtn: () async{
            print("This is my email ${logic.emailC.text}");
            print("This is my Password  ${logic.passC.text}");
            await logic.loginUserwithFirebase();
          },
          buttonwidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.ads_click), Text("Sign In")],
          ),
        ),
        Gap(16),
        TextButton(
            onPressed: () {
              logic.isSignined.value = !logic.isSignined.value;
            },
            child: Text(
              "Not Signed In? Signed Up",
              style: MyTextStyles.myTextStyleBlueMedium,
            )),
      ],
    );
  }

  mySignUPForm(context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          child: Image.asset("assets/signup.png"),
        ),

        MytextFeilds(
          myhinttext: "Enter Username",
          myController: logic.userC,
        ),
        Gap(16.0),
        MytextFeilds(
          myhinttext: "Enter E-mail",
          myController: logic.emailC,
        ),
        Gap(16.0),
        MytextFeilds(
          myhinttext: "Enter Password",
          myController: logic.passC,
        ),
        Gap(16.0),
        MyButtons(
          firstBtn: () async{
            print("This is my Username  ${logic.userC.text}");
            print("This is my email ${logic.emailC.text}");
            print("This is my Password  ${logic.passC.text}");
           await logic.createUserwithFirebase();
          },
          buttonwidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.ads_click), Text("Sign Up")],
          ),
        ),
        Gap(16),
        TextButton(
            onPressed: () {
              logic.isSignined.value = !logic.isSignined.value;
            },
            child: Text(
              "Already Signed UP! SignedIn",
              style: MyTextStyles.myTextStyleBlueMedium,
            )),
      ],
    );
  }
}
