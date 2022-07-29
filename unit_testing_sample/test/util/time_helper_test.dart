import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_sample/util/time_helper.dart';

void main() {
  group("TimeHelper", () {
    group("getTimeOfTheDayFunction", () {
      test("should return Night", () {
        DateTime currentTime = DateTime(2022, 1, 1, 5); // Arrange
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime); // Act
        expect(timeOfDay, "Night"); // Assert
      });

      test("should return Morning", () {
        DateTime currentTime = DateTime(2022, 1, 1, 10); // Arrange
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime); // Act
        expect(timeOfDay, "Morning"); // Assert
      });

      test("should return Afternoon", () {
        DateTime currentTime = DateTime(2022, 1, 1, 15); // Arrange
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime); // Act
        expect(timeOfDay, "Afternoon"); // Assert
      });

      test("should return Evening", () {
        DateTime currentTime = DateTime(2022, 1, 1, 20); // Arrange
        String timeOfDay = TimeHelper.getTimeOfTheDay(currentTime); // Act
        expect(timeOfDay, "Evening"); // Assert
      });
    });
  });
}
