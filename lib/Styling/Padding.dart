import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test MediaQuery',
      home: Card(),
    );
  }
}
class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Padding Test"),
        ),
        body: Center(
          child: Column(
            children: [
              for (int num = 0; num < 5; num++)
                const CardView()
            ],
          ) ,
        )
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(24.0),
      child: Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[300],
        child: const Text('Sound of screams but the'),
        key: Key("Container"),
      )
    );
  }
}



