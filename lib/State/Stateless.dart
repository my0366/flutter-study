import 'package:flutter/material.dart';
import 'Button.dart';
class TestHome extends StatelessWidget {
  const TestHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [MyButton()],
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