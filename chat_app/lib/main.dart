import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Chat Screen.dart';
import 'User_Authentication_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthScreen(),
      routes: {
        '/chat': (context) => ChatScreen(),
      },
    );
  }
}