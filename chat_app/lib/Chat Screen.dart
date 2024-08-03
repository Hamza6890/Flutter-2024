import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'message_bubble.dart'; // For Firestore
// import 'package:firebase_database/firebase_database.dart'; // For Realtime Database

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messageController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance; // For Firestore
  // final _database = FirebaseDatabase.instance.ref(); // For Realtime Database

  User? loggedInUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser!.email);
      }
    } catch (e) {
      print('Error getting user: ${e.toString()}');
    }
  }

  void _sendMessage() {
    if (_messageController.text.isNotEmpty) {
      // Send message using Firestore
      _firestore.collection('messages').add({
        'sender': loggedInUser!.email,
        'text': _messageController.text,
        'timestamp': FieldValue.serverTimestamp(),
      });

      // Or, send message using Realtime Database
      // _database.push().set({
      //   'sender': loggedInUser!.email,
      //   'text': _messageController.text,
      //   'timestamp': DateTime.now().millisecondsSinceEpoch,
      // });

      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('messages').orderBy('timestamp', descending: true).snapshots(), // For Firestore
              // stream: _database.child('messages').onValue, // For Realtime Database
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final messages = snapshot.data!.docs;
                  List<Widget> messageBubbles = [];
                  for (var message in messages) {
                    final messageText = message['text'];
                    final messageSender = message['sender'];
                    final currentUser = loggedInUser!.email;
                    bool isMe = messageSender == currentUser;
                    messageBubbles.add(
                      MessageBubble(
                        text: messageText,
                        isMe: isMe,
                        sender: messageSender,
                      ),
                    );
                  }
                  return ListView(
                    reverse: true,
                    padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                    children: messageBubbles,
                  );
                } else {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.lightBlueAccent),
              ),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration.collapsed(
                      hintText: 'Enter your message...',
                    ),
                  ),
                ),
                IconButton(
                  onPressed: _sendMessage,
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}