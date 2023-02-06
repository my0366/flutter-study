import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc_event.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc_state.dart';
import 'Bloc_bloc.dart';

void main() => runApp(CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterBloc>(
        create: (_) => CounterBloc(),
        child: const CounterApp_State(),
      ),
    );
  }
}
class CounterApp_State extends StatefulWidget {
  const CounterApp_State({Key? key}) : super(key: key);

  @override
  State<CounterApp_State> createState() => _CounterApp_StateState();
}

class _CounterApp_StateState extends State<CounterApp_State> {



  @override
  Widget build(BuildContext context) {
    CounterBloc counterBloc = BlocProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Bloc Test')),
      body: BlocBuilder<CounterBloc, CounterState> (
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Count"),
                Text(
                  state.counter.toString(),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () => counterBloc.add(IncrementEvent()),
            key: const Key("Increase Button"),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            onPressed: () => counterBloc.add(DecrementEvent()),
            key: const Key("Decrease Button"),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
