import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget()
      );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : const Text("ScrollBar App")
      ),
      body: Row (
        children: [
          Expanded(child: SizedBox(
            child: Scrollbar(
              thumbVisibility: true,
              controller: _firstController,
              child: ListView.builder(
                  shrinkWrap: true,
                  controller: _firstController,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      key: const Key("textKey"),
                      child: Text('Scrollable 1 : Index $index'),
                    );
                  }),
            ),
          ))
        ],
      ),
    );
  }
}
