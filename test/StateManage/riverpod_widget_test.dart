import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/StateManage/RiverPod/RiverPod.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(MyApp());

    final appBarTitleFinder = find.text('Provider App');

    expect(appBarTitleFinder, findsOneWidget);
  });


  testWidgets('User Tapped increase Button', (tester) async {
    await tester.pumpWidget(MyApp());
    // Provide the childWidget to the Container.

    //컨테이너 찾기
    var increaseButton = find.byKey(const ValueKey("Increase Button"));
    await tester.tap(increaseButton);
    await tester.pump();

    var countText = find.text("Count = 1");
    expect(countText, findsOneWidget);

  });

  testWidgets('User Tapped decrease Button', (tester) async {
    await tester.pumpWidget(MyApp());
    // Provide the childWidget to the Container.

    //컨테이너 찾기
    var decreaseButton = find.byKey(const ValueKey("Decrease Button"));
    await tester.tap(decreaseButton);
    await tester.pump();

    var countText = find.text("Count = 0");
    expect(countText, findsOneWidget);

  });

  testWidgets('User Tapped Init Button', (tester) async {
    await tester.pumpWidget(MyApp());
    // Provide the childWidget to the Container.

    var decreaseButton = find.byKey(const ValueKey("Decrease Button"));
    await tester.tap(decreaseButton);
    await tester.pump();
    //컨테이너 찾기
    var initButton = find.byKey(const ValueKey("Init Button"));
    await tester.tap(initButton);
    await tester.pump();

    var countText = find.text("Value: 0");
    expect(countText, findsOneWidget);

  });
}