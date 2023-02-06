import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/StateManage/RiverPod/RiverPodModel.dart';

void main() {
  //Example

  group('Counter Test', () {
    final counter = MyCounter();
    test('Counter value should be incremented', () {
      counter.increment();

      // ignore: invalid_use_of_protected_member
      expect(counter.state, 1);
    });

    // decrement
    test('Counter value should be decrement', () {

      counter.decrement();
      expect(counter.state, 0);
    });
  });

}
