import 'package:flutter/material.dart';

class Dashboard_ui extends StatelessWidget {
  const Dashboard_ui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Row(
            children: [
              Column(
                children: [
                  Icon(Icons.qr_code_scanner,color: Colors.black,),
                  Text("Scan",style: TextStyle(
                    fontSize: 10
                  ),)
                ],
              ),
              SizedBox(width: 20,),
              Container(
                width: MediaQuery.of(context).size.width / 1.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.black,),
                    hintText: "search....",
                    suffixIcon: Icon(Icons.search,color: Colors.black,),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    contentPadding: EdgeInsets.all(10),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
