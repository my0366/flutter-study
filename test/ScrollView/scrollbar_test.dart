import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/ScrollBarView.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text('ScrollBar App');

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('ListView Has Data', (tester) async {
    await tester.pumpWidget(const MyApp());

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey('textKey'));

    await tester.scrollUntilVisible(
      itemFinder,
      1000.0,
      scrollable: listFinder,
    );

    // Verify that the item contains the correct text.
    expect(itemFinder, findsNWidgets(100));
  });
}