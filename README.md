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

# Widget Testing

This is a software testing part of the functional testing level of the testing pyramid.

This test is for each component individually without integrating other components. So we don't want to speak with other components surrounding that.

Tt is also called modular testing if you are taking it from an architectural perspective.

A component tests on leave stuff out on purpose just to test the specific requirements that we have of course this

But usually what we are doing is we taking a component and say we want to test this specific component by its behavior without communication to other components or like in unit tests without dependencies to other subsystems

So for example we wouldn't call a database or asking any api calls

It is important for us that we have to define the component that we want to test. So for example if we want to test a log in widget or a login screen or a login component that could include a lot of different components underneath of it.

It is important that we define the scope what we want to test and we have to be very specific with that

The main goal of a component and widget tests is always to find bugs and also make sure that the system requirements, that business gave us will work

So for example a login screen should log in and navigate the user to another part of the screen or a scroll widget should scroll to a specific part with a specific speed

So what is the benefit of a widget test regarding to a unit test. A unit test is very small and precise to one function or method.

So for example we have maybe a text field that we can test for the username but we could go also one level higher to see the login form or going one level higher to have the whole login component inside that we can test now for login behavior like navigating a user after we click the certain button we check out if the text fields are working correctly.

The main goal for a widget or component test is always to find bugs bugs in the system requirements that business gave us. So for example business don't allows user names that are longer than eight letters we can check that in a component test

We can also check that in a unit test but a unit test would maybe only check the validator with a component test we also check the
components surrounding it, is it visualized correctly, is the ui behave and react on the stuff that we have and so on and so forth.

