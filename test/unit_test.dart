import 'package:flutter_test/flutter_test.dart';

class Count {
  int value = 0;
  int number = 10;
  void increment() => value++;

  void decrement() => value--;

  void loopTest () {
    for (int i = 1; i <= 100; i++) {
      number += 1;
    }
  }
}


void main() {
  //Example

  group('Counter Test', () {
    final counter = Count();
    test('Counter value should be incremented', () {
      counter.increment();

      expect(counter.value, 1);
    });

    //Loop
    test('loop value should be ended', () {

      counter.loopTest();
      expect(counter.number, 110);
    });
  });

}
