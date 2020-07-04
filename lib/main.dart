import 'package:flutter/material.dart';
import 'package:noritsu_password_generator/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Noritsu Password Generator",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Noritsu Password Generator",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          elevation: 5.0,
        ),
        body: Home(),
      ),
    );
  }
}
