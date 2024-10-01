import 'package:flutter/material.dart';

class LearningPathScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Learning Path')),
      body: Center(
        child: Text('Learning Path Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
