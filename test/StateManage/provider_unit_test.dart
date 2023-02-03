import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/StateManage/Provider/ProviderModel.dart';

void main() {
  //Example

  group('Counter Test', () {
    final counter = Counts();
    test('Counter value should be incremented', () {
      counter.increase();

      expect(counter.count, 1);
    });

    // decrement
    test('Counter value should be decrement', () {

      counter.decrease();
      expect(counter.count, 0);
    });
  });

}
