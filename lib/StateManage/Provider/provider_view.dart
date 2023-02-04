import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'provider_state.dart';
import 'provider_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counts()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider App'),
      ),
      body: ChangeNotifierProvider(
        create: (BuildContext context) => Counts(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Counter(),
              SizedBox(height: 40),
              Button(),
            ],
          ),
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
  const Button({Key? key}) : super(key: key);

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool isEnabled = false;

  @override
  void initState() {
    super.initState();
  }
  bool isDecreaseButtonDisabled = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            key: const Key("increase Button"),
            onPressed: () {
              context.read<Counts>().increase();
              isDecreaseButtonDisabled = false;
            },
            child: const Icon(Icons.add)),
        const SizedBox(
          width: 40,
        ),
        ElevatedButton(
            key: const Key("decrease Button"),

            onPressed: () {
              print(isDecreaseButtonDisabled);
              isDecreaseButtonDisabled ? null : context.read<Counts>().decrease();
              if (context.read<Counts>().count == 0) {
                isDecreaseButtonDisabled = true;
              } else {
                isDecreaseButtonDisabled = false;
              }

            },
            child: const Icon(Icons.remove))
      ],
    );
  }
}


