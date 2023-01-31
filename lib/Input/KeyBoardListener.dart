import 'package:flutter/material.dart';

//Keyboard
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'FormField Test';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _controller = TextEditingController();
  String returnValue = "";
  final FocusNode focusNode = FocusNode();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              RawKeyboardListener(
                  focusNode: focusNode,
                  child: TextFormField(
                    controller: _controller,
                    onSaved: (text) {
                      setState(() {
                        returnValue = text!;
                      });
                    },
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide(color: Colors.blue)),
                      prefixIcon: Icon(Icons.phone),
                      suffixIcon: Icon(Icons.star),
                    ),
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  )
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState?.save();
                      print(_controller.text);
                      ;
                    } else {}
                  },
                  child: const Text("Submit")),
              const SizedBox(height: 20.0),
              Text("return value = $returnValue"),
              if (focusNode.hasFocus)
                const Text("has focus")
              else
                const Text("no focus")
            ],
          ),
        ));
  }
}
