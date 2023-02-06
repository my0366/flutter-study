import 'package:flutter/cupertino.dart';
import 'package:flutter_study/StateManage/Bloc/Bloc_view.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(CounterApp());

    final appBarTitleFinder = find.text('Bloc Test');

    expect(appBarTitleFinder, findsOneWidget);
  });


  testWidgets('User Tapped increase Button', (tester) async {
    await tester.pumpWidget(CounterApp());
    // Provide the childWidget to the Container.

    //컨테이너 찾기
    var increaseButton = find.byKey(const ValueKey("Increase Button"));
    await tester.tap(increaseButton);
    await tester.pump();

    var countText = find.text("1");
    expect(countText, findsOneWidget);

  });

  testWidgets('User Tapped decrease Button', (tester) async {
    await tester.pumpWidget(CounterApp());
    // Provide the childWidget to the Container.

    //컨테이너 찾기
    var decreaseButton = find.byKey(const ValueKey("Decrease Button"));
    await tester.tap(decreaseButton);
    await tester.pump();

    var countText = find.text("-1");
    expect(countText, findsOneWidget);

  });

}