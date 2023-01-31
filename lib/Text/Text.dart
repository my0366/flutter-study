import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(TextApp());

class TextApp extends StatelessWidget {
  String name = "SungJe";

  TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text App")),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Text(
            '$name think Fluuter is fun',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
