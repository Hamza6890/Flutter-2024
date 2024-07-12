import 'package:flutter/material.dart';

class appBar_section extends StatelessWidget {
  const appBar_section({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 20,),
              Icon(Icons.qr_code_scanner,color: Colors.black,),
              
            ],
          ),
          ),
    );
  }
}
