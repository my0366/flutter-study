import 'package:flutter/material.dart';

class TestStatefulWidget extends StatefulWidget {

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<TestStatefulWidget> {

  int _counter = 0;

  void _increment() {
    setState(() {
      // This call to setState tells the Flutter framework that
      // something has changed in this State, which causes it to rerun
      // the build method below so that the display can reflect the
      // updated values. If you change _counter without calling
      // setState(), then the build method won't be called again,
      // and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(_counter);
      },
      child: Container(
        height: 36.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text('Engage'),
        ),
      ),
    );
  }

}