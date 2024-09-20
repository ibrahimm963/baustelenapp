import 'package:flutter/material.dart';
import 'package:ummahbit/chatpage.dart';

void main() {
  runApp(mainpage());
}

class mainpage extends StatelessWidget {
  const mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chatapp(),
    );
  }
}