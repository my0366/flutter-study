import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/Styling/MediaQuery.dart';
void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(MyApp());

    final appBarTitleFinder = find.text("Test MediaQuery");

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('User input no text and tap', (tester) async {

    await tester.pumpWidget(MyApp());
    var width = find.text("Device width : 393");
    var height = find.text("Device height : 852");

    expect(width, findsOneWidget);
    expect(height, findsOneWidget);
  });

}