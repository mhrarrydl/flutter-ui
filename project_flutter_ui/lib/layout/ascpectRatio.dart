import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AspectRatio Example'),
        ),
        body: AspectRatio(
          aspectRatio: 180 / 240,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
