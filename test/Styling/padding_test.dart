import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/Styling/Padding.dart';
void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(MyApp());

    final appBarTitleFinder = find.text("Padding Test");

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('User input no text and tap', (tester) async {

    await tester.pumpWidget(MyApp());

    var container = find.byKey(ValueKey("Container"));
    expect(container, findsNWidgets(5));
  });

}