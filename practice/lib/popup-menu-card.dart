import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 10,left: 10,right: 10),
            width: MediaQuery.of(context).size.width * 0.6,  // 80% of screen width
            height: MediaQuery.of(context).size.height * 0.6, // 50% of screen height
            padding: EdgeInsets.all(20.0), // Adjust padding as needed
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

       home: Scaffold(

       ),
    );
  }
}
