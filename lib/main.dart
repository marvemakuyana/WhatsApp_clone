import 'package:flutter/material.dart';

import './whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(7, 94, 84, 1),
        accentColor: Color.fromRGBO(37, 211, 102, 1)
      ),
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}