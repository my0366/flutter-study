import 'package:flutter/material.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test MediaQuery',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  @override
  // TODO: implement key
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceData = MediaQuery.of(context);
    Size screenSize = deviceData.size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Test MediaQuery'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Device width : ${screenSize.width.toInt()}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Device height : ${screenSize.height.toInt()}',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            // deviceData.orientation == Orientation.portrait
            screenSize.width > 500
                ? Container(
              width: screenSize.width / 5,
              height: screenSize.height / 2,
              color: Colors.amber.withOpacity(.5),
            )
                : Container(
              width: screenSize.width / 3,
              height: screenSize.height / 3,
              color: Colors.red.withOpacity(.5),
            ),
          ],
        ),
      ),
    );
  }
}