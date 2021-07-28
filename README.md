# stock_list

A new Flutter project based on toro mobile challenge.

## Getting Started

Just run on terminal:

```
flutter run
```

## Architecture

This project has some clear architecture layers:

- Page: the pure UI
- ViewModel: the Businnes Logic for the page
- [TODO] Controller: the controller to connect the ViewModel to Repositories
- [TODO] Repository: the layer to make external service calls: such as LocalStorage, HTTP calls etc

## [TODO] Tests

The tests are based on each layer, being able to test the UI itself, the widget composition and functionalities, the ViewModel functions and its composition, the controller calls and the DI pattern allows to mock each instance above.
