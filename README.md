# Flutter Testing

## Testing Pyramid

Everything that we do in programming or in testing could be represented as a pyramid.

On the bottom we have a lot of unit tests and it is pretty quick to implement and cheap and the higher we go up the pyramid the more expensive it will be.

### Unit Testing:

Unit tests is the foundation of the pyramid and we want to have as much as possible from them because they are easy to implement and cheap in general.

They usually are used to test certain functions and methods and with that they are very common and best practice everywhere.

### Widget Testing:

The second layer is usually functional tests. We call these widget tests in flutter.

For example, With these widget tests we can test that the color is in a certain way, that we have a text title.

Such things can be tested in a functional test in that case so that our widget behaves in a certain way if we put it different input parameters.

### Integration Testing:

The next step are integration tests and this are according to the flutter documentation the biggest tests. 

So integration test usually tests a very big part of your app or the full app and this means like things like performance tests or scroll behavior tests etc.

# Unit Testing

### What is unit testing?
Essentially a unit test initialize a small part of your application or system and tests its behavior independent from other parts of the application.

Typical unit tests contains out of three parts:
1. Initialization (Arrange): It includes initialization of pieces of the application arrange 

2. Execute (Act): Execute something on your application

3. Observation (Assert): Observe the expected result

These three phases are also known as the three A's and called Arrange, Act and Assert.

A good unit test should be easy writable and maintainable

A good unit test should be readable

A good unit test should be reliable.

A good unit test should be independent from external factors
For example execution order so if one test runs before another it shouldn't affect the test itself. We have to make sure that our unit tests don't depend on databases file systems, external factors and all of these because we want to get rid of all these dependencies. 

A good unit test should be fast