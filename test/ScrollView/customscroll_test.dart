import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/CustomScrollView.dart';
void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text('Demo');

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('SliverGridView Has Data List', (tester) async {
    await tester.pumpWidget(const MyApp());
    int itemCount = 20;
    var text = find.byKey(const ValueKey("Container"));
    expect(text, findsNWidgets(itemCount));
  });
}