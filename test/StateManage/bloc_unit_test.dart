import 'package:flutter_study/StateManage/Bloc/Bloc_state.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc_bloc.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc_event.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //Example
  group('Counter Test', () {
    final counterBloc = CounterBloc();

    test('initial state is 0', () {
      expect(counterBloc.state.counter, 0);
    });

    blocTest(
        "Increment",
        build: () => counterBloc,
        act: (bloc) => bloc.add(IncrementEvent()),
        expect: () => [const CounterState(counter: 1)]
    );

    blocTest(
        "Decrement",
        build: () => counterBloc,
        act: (bloc) => bloc.add(DecrementEvent()),
        expect: () => [const CounterState(counter: -1)]
    );

    // decrement
  });

}