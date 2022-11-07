import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

import '../pages/chat_screen.dart';

class ChatModel {
  final String name;
  final String message;
  final Color seenStatus;
  final String time;
  final String avatarUrl;
  ChatModel(
      {required this.name,
      required this.message,
      required this.seenStatus,
      required this.time,
      required this.avatarUrl});
}

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleChatWidget(
                chatTitle: "Sourav",
                chatMessage: '404 banao bhai',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://avatars.githubusercontent.com/u/68729701?v=4'),
            SingleChatWidget(
                chatTitle: "Reignz3",
                chatMessage: 'ninad patil rom katil',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://avatars.githubusercontent.com/u/18658422?v=4'),
            SingleChatWidget(
                chatTitle: "steel",
                chatMessage: 'real',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://avatars.githubusercontent.com/u/69862555?v=4'),
            SingleChatWidget(
                chatTitle: "Aakif",
                chatMessage: 'The North Remembers',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://i.insider.com/5ce420e193a15232821d3084?width=700'),
          ],
        ),
      ),
    );
  }
}
