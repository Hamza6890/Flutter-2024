import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(150),
              color: Colors.grey.shade200,
            ),

          )
        ],
      ),
    );
  }
}
