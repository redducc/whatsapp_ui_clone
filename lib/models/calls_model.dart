import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/pages/call_screen.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Sourav',
              imageUrl: 'https://avatars.githubusercontent.com/u/68729701?v=4',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 01:11 AM',
              chatTitle: 'Hades',
              imageUrl: 'https://avatars.githubusercontent.com/u/69862555?v=4',
            ),
            SingleCallWidget(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 5:28 AM',
              chatTitle: 'water',
              imageUrl:
                  'https://upload.wikimedia.org/wikipedia/en/8/80/Melisandre-Carice_van_Houten.jpg',
            ),
            SingleCallWidget(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Reignz',
              imageUrl: 'https://avatars.githubusercontent.com/u/18658422?v=4',
            ),
          ],
        ),
      ),
    );
  }
}
