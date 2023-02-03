import 'package:flutter_study/StateManage/Bloc/BlocProvier.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //Example
  group('Counter Test', () {
    final counter = CounterCubit();
    test('Counter value should be incremented', () {
      counter.increment();

      expect(counter.state, 1);
    });

    // decrement
    test('Counter value should be decrement', () {

      counter.decrement();
      expect(counter.state, 0);
    });
  });

}