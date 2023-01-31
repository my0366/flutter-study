import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/SingleChild.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(MyApp());

    final appBarTitleFinder = find.text('SingleChildScrollView');

    expect(appBarTitleFinder, findsOneWidget);
  });

  //
  testWidgets('ScrollView has Container', (tester) async {
    await tester.pumpWidget(MyApp());

    const containerCount = 5;
    final itemFinder = find.byType(Container);

    // Verify that the item contains the correct text.
    expect(itemFinder, findsNWidgets(containerCount));
  });
}