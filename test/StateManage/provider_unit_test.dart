import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/StateManage/Provider/provider_provider.dart';
void main() {
  //Example

  group('Counter Test', () {
    final counter = Provider_Provider();
    test('Counter value should be increment', () {

      counter.increase();

      expect(counter.state.count, 1);
    });

    // decrement
    test('Counter value should be decrement', () {

      counter.decrease();
      expect(counter.state.count, 0);
    });
  });

}
