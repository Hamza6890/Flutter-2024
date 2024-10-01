import 'package:flutter/material.dart';

import '../widgets/live_btn.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20,
                backgroundImage: AssetImage("assets/s1.jfif"),
              ),
            ),
          ],
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
          title: Text(
            "Match summary",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 5,
            ),
            Center(
              child: live_btn(),
            )
          ],
        ),
      ),
    );
  }
}
