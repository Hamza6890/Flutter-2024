import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/slider.dart';

import 'appbar.dart';
import 'bottom_navigationBar.dart';

class Popup_menuCard extends StatefulWidget {
  const Popup_menuCard({super.key});

  @override
  State<Popup_menuCard> createState() => _Popup_menuCardState();
}

class _Popup_menuCardState extends State<Popup_menuCard> {
  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => showPopupMenu());
  }
  void showPopupMenu() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.deepOrange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            color: Colors.deepOrange,
            margin: EdgeInsets.only(left: 10,right: 10),
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.6,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '7.7 FLASHSALE',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.deepOrange,
                    fontWeight: FontWeight.bold,fontSize: 20,
                    wordSpacing: -3
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Close'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
         //bottomNavigationBar: bottomBar(),
         body: Column(
             children: [
               appBar_section(),
              // ImageSlider(),
             ],
         ),
       ),
    );
  }
}
