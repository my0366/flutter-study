import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/RefreshIndicator.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text('RefreshIndicator App');

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('ListView Has Data', (tester) async {
    await tester.pumpWidget(const MyApp());

    int itemCount = 10;

    var listView = find.byType(ListView);

    var text = find.byType(ListTile);

    var button = find.byType(FloatingActionButton);

    var refreshIndicator = find.byType(RefreshIndicator);

    expect(listView, findsOneWidget);

    expect(text, findsNWidgets(itemCount));

    expect(button, findsOneWidget);

    expect(refreshIndicator, findsOneWidget);

  });
}