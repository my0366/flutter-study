import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/PageView.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text('PageView App');

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('PageView Has Data', (tester) async {
    await tester.pumpWidget(const MyApp());
    int itemCount = 3;

    var text = find.byType(Container);

    expect(text, findsNWidgets(itemCount));
  });

  testWidgets('PageView scrolled Vertical', (tester) async {
    await tester.pumpWidget(const MyApp());

    var text = find.byKey(ValueKey("Second Text"));
    var texttype = find.byType(Text);
    final gesture = await tester.startGesture(Offset(100, 300));
    await gesture.moveBy(Offset(300, 0));
    await tester.pump();
    
    expect(texttype, findsOneWidget);

  });

  testWidgets('PageView scrolled Vertical 2 times', (tester) async {
    await tester.pumpWidget(const MyApp());

    final gesture = await tester.startGesture(Offset(0, 100));
    await gesture.moveBy(Offset(0, -500));
    await gesture.moveBy(Offset(0, -500));
    await tester.pump();

    var text = find.byType(Center);
    expect(text, findsNWidgets(1));

  });
}