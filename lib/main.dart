import 'package:flutter/material.dart';
import 'package:whatsapp_clone/screens/whatsapp_home.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "WhatsApp",
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        primary: Color(0xFF075E54),
        secondary: Color(0xFF25D366),
      )),
      home: WhatsappHome(),
    );
  }
}
