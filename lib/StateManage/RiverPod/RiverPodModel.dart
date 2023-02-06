import 'package:riverpod/riverpod.dart';

class MyCounter extends StateNotifier<int> {
  MyCounter() : super(0);

  void increment() => state++;
  void decrement() => state--;
  void initCount() => state = 0;
}

final myCounterStateNotifierProvider =
StateNotifierProvider<MyCounter, int>((ref) {
  return MyCounter();
});