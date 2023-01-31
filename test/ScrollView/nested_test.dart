import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/NestedScrollView.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text('NestedScrollView');

    expect(appBarTitleFinder, findsOneWidget);
  });

  //
  testWidgets('첫 번째 컨트롤러 선택 후 index 12 찾기', (tester) async {
    await tester.pumpWidget(const MyApp());

    final itemFinder = find.text("Item 12");

    await tester.drag(find.byType(TabBarView), const Offset(0.0, -300.0));
    await tester.pump();
    // Verify that the item contains the correct text.
    expect(itemFinder, findsOneWidget);
  });

  testWidgets('두 번째 컨트롤러 선택 후 index 12 찾기', (tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text("Tap 2"));
    await tester.pump();
    final itemFinder = find.text("Item 12");

    await tester.drag(find.byType(TabBarView), const Offset(0.0, -300.0));
    await tester.pump();
    // Verify that the item contains the correct text.
    expect(itemFinder, findsOneWidget);
  });
}