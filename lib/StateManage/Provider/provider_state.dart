import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'provider_provider.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Count = ${context.watch<Counts>().count}",
      key: const Key("result Text"),
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }
}
