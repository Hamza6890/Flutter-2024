import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_logic.dart';

class HomePage extends StatelessWidget {
  final logic = Get.put(HomeLogic());

  @override
  Widget build(BuildContext context) {
    return Center(child: Container(
      child: Text("Home Page"),
    ));
  }
}