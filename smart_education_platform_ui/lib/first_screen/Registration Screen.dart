import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.white,
      body: Container(
        height: size.height,
        width: size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                color: Colors.white,
                child: Image.asset("assets/firstscreen.png"),
              ),
              Container(height: 50,color: Colors.white,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text('Login or Register', style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,)),
              ),
              SizedBox(height: 70),
              SizedBox(width: size.width *.70,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed('/login'),
                  child: Text('Login', style: TextStyle(
                      color: Colors.white
                  ),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                ),
              ),
               Gap(16.0),
              SizedBox(width: size.width *.70,
                child: ElevatedButton(
                  onPressed: () => Get.toNamed('/register'),
                  child: Text('Register',style: TextStyle(
                    color: Colors.white
                  ),),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.indigo),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
