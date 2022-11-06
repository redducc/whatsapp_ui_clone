import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/whatsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "WhatsApp",
      theme: ThemeData(
          primaryColor: Color(0xff075E54), accentColor: Color(0xff25D366)),
      home: WhatsAppHome(),
    );
  }
}
