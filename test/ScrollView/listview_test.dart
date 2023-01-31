import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/ListView.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const ListViewDefaultApp());

    final appBarTitleFinder = find.text('ListView App');

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('ListView Has Data', (tester) async {
    await tester.pumpWidget(const ListViewDefaultApp());
    int itemCount = 10;
    const childWidget = ListViewCustom();

    // Provide the childWidget to the Container.
    await tester.pumpWidget(const MaterialApp(home: childWidget));

    var text = find.byType(ListTile);

    expect(text, findsNWidgets(itemCount));

  });
}