import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_testing_sample/widgets/scroll_testing.dart';

void main() {
  group("ScrollTestingWidget", () {
    testWidgets("should not scroll with less items",
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ScrollTestingWidget(
          bookTitles: List.generate(5, (index) => 'Book $index'),
        ),
      ));

      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pump();

      final firstBookFinder = find.text("Book 0");
      expect(firstBookFinder, findsOneWidget);
    });

    testWidgets("should scroll with a lot of items",
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ScrollTestingWidget(
          bookTitles: List.generate(15, (index) => 'Book $index'),
        ),
      ));

      await tester.drag(find.byType(ListView), const Offset(0, -300));
      await tester.pump();

      final firstBookFinder = find.text("Book 0");
      final eleventhBookFinder = find.text("Book 11");
      final listTilesFinder = find.byType(ListTile);
      expect(firstBookFinder, findsNothing);
      expect(eleventhBookFinder, findsOneWidget);
      expect(listTilesFinder, findsNWidgets(10));
    });

    testWidgets("should show only 2 on small screen size",
        (WidgetTester tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(320, 350);

      await tester.pumpWidget(MaterialApp(
        home: ScrollTestingWidget(
          bookTitles: List.generate(2, (index) => 'Book $index'),
        ),
      ));

      final listTilesFinder = find.byType(ListTile);
      expect(listTilesFinder, findsNWidgets(2));
    });

    testWidgets("should throw error if empty list is provided",
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: ScrollTestingWidget(
          bookTitles: [],
        ),
      ));

      expect(tester.takeException(), isAssertionError);
    });
  });
}
