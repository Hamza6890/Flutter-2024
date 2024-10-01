import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MytextFeilds extends StatefulWidget {
  TextEditingController myController =TextEditingController();
  String? myhinttext;
   MytextFeilds({super.key, required this.myController,this.myhinttext});

  @override
  State<MytextFeilds> createState() => _MytextFeildsState();
}

class _MytextFeildsState extends State<MytextFeilds> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  Card(
      elevation: 8.0,
      child: Container(
        alignment: Alignment.center,
        width: size.width * .75,
        padding: EdgeInsets.only(left: 12.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: TextField(
          controller: widget.myController,
           decoration: InputDecoration(
             border: InputBorder.none,
             hintText: widget.myhinttext,
           ),
        ),
      ),
    );
  }
}
