import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/Input/KeyBoardListener.dart';

//Keyboard
void main() {
  testWidgets('AppBar', (tester) async {

    await tester.pumpWidget(const MyApp());

    final appBarTitleFinder = find.text("FormField Test");

    expect(appBarTitleFinder, findsOneWidget);
  });

  testWidgets('User input no text and tap', (tester) async {

    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text("Submit"));
    await tester.pump();

    var returnText = find.text("Please enter some text");
    expect(returnText, findsOneWidget);
  });

  testWidgets('User input some text and tap', (tester) async {

    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextField), 'hi');
    await tester.tap(find.text("Submit"));
    await tester.pump();

    var returnText = find.text("return value = hi");
    expect(returnText, findsOneWidget);
  });

  //Foucs Test
  testWidgets('User has Text Focus', (tester) async {

    await tester.pumpWidget(const MyApp());

    await tester.enterText(find.byType(TextField), 'hi');
    await tester.tap(find.text("Submit"));
    await tester.pump();

    var returnText = find.text("has focus");
    expect(returnText, findsOneWidget);
  });

  testWidgets("User hasn't Text Focus'", (tester) async {

    await tester.pumpWidget(const MyApp());

    var returnText = find.text("no focus");
    expect(returnText, findsOneWidget);
  });
}