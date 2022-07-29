import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_testing_sample/main.dart' as app;

void main() {
  group('App Test', () {
    // This creates and initializes the binding to flutter driver
    // Flutter driver is the one executing the test one after another
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets("full app test", (tester) async {
      // This will load the main App
      app.main();

      // Wait until the app has settled (i.e no animations are running or
      // nothing changes on the screen)
      await tester.pumpAndSettle();

      // Create Finders for Email Field, password field and Login button
      final emailField = find.byType(TextFormField).first;
      final passwordField = find.byType(TextFormField).last;
      final loginButton = find.byType(ElevatedButton).first;

      // Fill in the fields with details
      await tester.enterText(emailField, 'sahil.jphondekar@gmail.com');
      await Future.delayed(const Duration(seconds: 1)); // 1 sec delay

      await tester.enterText(passwordField, '123456');
      await Future.delayed(const Duration(seconds: 1));

      // Click on the login button and wait till it is settled
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      // Find the first checkbox in the screen and verify
      final firstCheckbox = find.byType(Checkbox).first;

      expect(
          tester.getSemantics(firstCheckbox),
          matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: false,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true,
          ));

      // Tap on the checkbox and wait till it settled
      await tester.tap(firstCheckbox);
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 1));

      // Expect the checkbox to be checked
      expect(
          tester.getSemantics(firstCheckbox),
          matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: true,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true,
          ));
    });
  });
}
