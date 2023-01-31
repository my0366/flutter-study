import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/ScrollBarView.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text('ScrollBar App');

    expect(appBarTitleFinder, findsOneWidget);
  });


  testWidgets('has scrollBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final scrollBar = find.byType(Scrollbar);

    expect(scrollBar, findsOneWidget);
  });
  //
  testWidgets('ListView has index12 when Tester scrolled vertical 300 points', (tester) async {
    await tester.pumpWidget(const MyApp());

    final itemFinder = find.text("Scrollable 1 : Index 12");

    await tester.drag(find.byType(ListView), const Offset(0.0, -300.0));
    await tester.pump();
    // Verify that the item contains the correct text.
    expect(itemFinder, findsOneWidget);
  });
}