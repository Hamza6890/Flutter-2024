import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/firstScreen');
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Upper part with image (70% of screen height)
          Expanded(
            flex: 7,
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.only(top: 30,bottom: 30),
              child: Image.asset("assets/splashS.png"),
            ),
          ),
          // Lower part with heading and text (30% of screen height)
          Expanded(
            flex: 3,
            child: Container(
              width: size.width,
              padding: const EdgeInsets.all(16),
              color: Colors.indigo,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Smart Education Platform',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Personalized learning experiences for every student.',
                    style: TextStyle(fontSize: 16,color: Colors.white,),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
