import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_provider.dart';

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
