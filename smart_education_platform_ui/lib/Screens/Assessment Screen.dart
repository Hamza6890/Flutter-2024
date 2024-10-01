import 'package:flutter/material.dart';

class AssessmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Assessments')),
      body: Center(
        child: Text('Assessment Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
