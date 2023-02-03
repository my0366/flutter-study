import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'RiverPodModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(child: MyApp())
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
      home: PracticePage(),
    );
  }
}


class PracticePage extends ConsumerWidget {
  PracticePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterRead = ref.read(myCounterStateNotifierProvider.notifier);
    final counterState = ref.watch(myCounterStateNotifierProvider);

    ref.listen(myCounterStateNotifierProvider, (previous, next) {
      print(next);
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Practice'),
      ),
      body: Center(
        child: Text(
          'Value: $counterState',
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: Align(
        alignment: Alignment.bottomRight,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: '111',
              onPressed: () => counterRead.increment(),
              child: const Icon(
                Icons.add,
              ),
              key: Key("Increase Button"),
            ),
            const SizedBox(width: 10.0),
            FloatingActionButton(
              heroTag: '222',
              onPressed: () => counterRead.decrement(),
              child: const Icon(
                Icons.remove,
              ),
              key: Key("Decrease Button"),
            ),
            const SizedBox(width: 10.0),
            FloatingActionButton(
              heroTag: '333',
              onPressed: () => counterRead.initCount(),
              child: const Icon(
                Icons.refresh,
              ),
              key: Key("Init Button"),
            ),
          ],
        ),
      ),
    );
  }
}