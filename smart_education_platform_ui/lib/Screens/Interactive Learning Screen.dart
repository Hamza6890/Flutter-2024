import 'package:flutter/material.dart';

class InteractiveLearningScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Interactive Learning')),
      body: Center(
        child: Text('Interactive Learning Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
