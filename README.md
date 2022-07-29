# Flutter Testing

## Testing Pyramid

Everything that we do in programming or in testing could be represented as a pyramid.

On the bottom we have a lot of unit tests and it is pretty quick to implement and cheap and the higher we go up the pyramid the more expensive it will be.

## Unit Testing:

Unit tests is the foundation of the pyramid and we want to have as much as possible from them because they are easy to implement and cheap in general.

They usually are used to test certain functions and methods and with that they are very common and best practice everywhere.

## Widget Testing:

The second layer is usually functional tests. We call these widget tests in flutter.

For example, With these widget tests we can test that the color is in a certain way, that we have a text title.

Such things can be tested in a functional test in that case so that our widget behaves in a certain way if we put it different input parameters.

## Integration Testing:

The next step are integration tests and this are according to the flutter documentation the biggest tests. 

So integration test usually tests a very big part of your app or the full app and this means like things like performance tests or scroll behavior tests etc.