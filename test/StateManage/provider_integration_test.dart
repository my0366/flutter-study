import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_study/StateManage/Provider/provider_view.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('increment and decrease test', () {
    testWidgets('tap on the increment button, verify counter',
            (tester) async {
          app.main();
          await tester.pumpAndSettle();

          final initCountText = find.text('Count = 0');
          // Verify the counter starts at 0.
          expect(initCountText, findsOneWidget);

          // Finds the floating action button to tap on.
          final Finder fab = find.byKey(const ValueKey("increase button"));
          var increaseButton = find.byKey(const ValueKey("increase Button"));
          // Emulate a tap on the floating action button.
          await tester.tap(increaseButton);

          // Trigger a frame.
          await tester.pumpAndSettle();

          final resultCountText = find.text('Count = 1');

          // Verify the counter increments by 1.
          expect(resultCountText, findsOneWidget);
        });

    testWidgets('tap on the increment button then tap decrease Button, verify counter',
            (tester) async {
          app.main();
          await tester.pumpAndSettle();

          final initCountText = find.text('Count = 0');
          // Verify the counter starts at 0.
          expect(initCountText, findsOneWidget);

          // Finds the floating action button to tap on.
          var increaseButton = find.byKey(const ValueKey("increase Button"));
          // Emulate a tap on the floating action button.
          await tester.tap(increaseButton);

          var decreaseButton = find.byKey(const ValueKey("decrease Button"));
          // Emulate a tap on the floating action button.
          await tester.tap(decreaseButton);

          // Trigger a frame.
          await tester.pumpAndSettle();

          final resultCountText = find.text('Count = 0');

          // Verify the counter increments by 1.
          expect(resultCountText, findsOneWidget);
        });
  });
}