import 'package:flutter/material.dart';
import 'package:flutter_study/Components/Stateless.dart';
import 'Components.dart';
class TestHome extends StatelessWidget {
  const TestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Row(
        children: [MyButton()],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add',
        onPressed: () => {
          print("a")
        },
      ),
    );
  }
}