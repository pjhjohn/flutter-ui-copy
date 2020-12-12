import 'package:flutter/material.dart';

void main() {
  runApp(TideUiCopyApp());
}

class TideUiCopyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sunset.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: null,
      ),
    );
  }
}
