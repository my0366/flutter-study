import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const TextApp());

class TextApp extends StatelessWidget {
  const TextApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Text App")),
      body: const Padding(
        padding: EdgeInsets.all(50.0),
        child: Center(
            child: SelectionArea(
                child:
                Text.rich(
          TextSpan(
            text: 'Hello', // default text style
            children: <TextSpan>[
              TextSpan(
                  text: ' beautiful ',
                  style: TextStyle(fontStyle: FontStyle.italic)),
              TextSpan(
                  text: 'world', style: TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        )
            )),
      ),
    );
  }
}
