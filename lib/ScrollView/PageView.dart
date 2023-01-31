import 'package:flutter/material.dart';
import 'package:flutter_study/ScrollView/ListViewCase.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'PageView App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      children: <Widget>[
        ListViewBuilder(),
        const Center(
          key: Key("Second Text"),
          child: Text('Second Page'),
        ),
        const Center(
          key: Key("Third Text"),
          child: Text('Third Page'),
        ),
      ],
    );
  }
}
