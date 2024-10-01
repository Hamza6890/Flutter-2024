import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  VoidCallback firstBtn;
  Widget buttonwidget;


  MyButtons({super.key, required this.buttonwidget, required this.firstBtn,});

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Card(
      elevation: 8.0,
      child: Container(
        alignment: Alignment.center,
        width: size.width * .75,
        child: ElevatedButton(
            onPressed: firstBtn,
            child: buttonwidget,
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.indigo,
              // Text color
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              shadowColor: Colors.blueAccent,

              // Shadow color
              elevation: 5,
              // Elevation
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
            )),
      ),
    );
  }
}
