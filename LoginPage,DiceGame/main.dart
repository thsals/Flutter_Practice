import 'package:flutter/material.dart';
import 'package:flutter_practice/Loginpage.dart';


void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice",
      home: LoginPage(),
      
    );
  }
}
