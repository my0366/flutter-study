import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/ScrollView/GridView.dart';

void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text('GridView App');

    expect(appBarTitleFinder, findsOneWidget);
  });


  testWidgets('GridView Has Data', (tester) async {
    await tester.pumpWidget(const MyApp());
    int itemCount = 4;
    const childWidget = GridViewApp();

    // Provide the childWidget to the Container.
    await tester.pumpWidget(const MaterialApp(home: childWidget));

    //컨테이너 찾기
    var container = find.byType(Container);

    expect(container, findsNWidgets(itemCount));
    
  });
}