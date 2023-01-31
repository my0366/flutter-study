import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SingleChildScrollView',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SingleChildScrollView'),
          centerTitle: true,
        ),
        body: Scrollbar(
          thumbVisibility: true,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Container(
                  height: 150,
                  color: Colors.amberAccent,
                ),
                Container(
                  height: 150,
                  color: Colors.blueAccent,
                ),
                Container(
                  height: 150,
                  color: Colors.redAccent,
                ),
                Container(
                  height: 150,
                  color: Colors.greenAccent,
                ),
                Container(
                  height: 150,
                  color: Colors.cyanAccent,
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}