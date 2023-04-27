# Note Taking App with Flutter

Welcome to the Note Taking App repository! This is an ongoing project that aims to create a note-taking application using Flutter, DDD architecture, and BLoC state management.

## Getting Started

To get started with this project, you'll need to have Flutter installed on your machine. You can download Flutter from the official website here.

Once you have Flutter installed, clone this repository to your machine using your preferred method. Then, open the project in your IDE of choice.

## Architecture

This project uses Domain-Driven Design (DDD) architecture to help separate business logic from the user interface. The app consists of three main layers:

#### Domain Layer:

This layer contains the core business logic of the app, such as the models, entities, and services. It should be independent of the other layers and should not rely on any specific framework or library.

#### Infrastructure Layer:

This layer provides the necessary infrastructure to implement the domain layer. It includes things like data repositories, data sources, and external services. This layer can rely on external frameworks and libraries.

#### Presentation Layer:

This layer is responsible for presenting the data to the user. It includes the UI components, the BLoC state management, and any other framework-specific code.

## State Management

This project uses the BLoC (Business Logic Component) state management pattern to manage the state of the app. BLoC is a popular pattern in the Flutter community that helps separate business logic from the user interface.

In this project, each screen has its own BLoC that manages the state of that screen. The BLoCs communicate with the domain layer to perform business logic and with the presentation layer to update the UI.

## Contributing

This project is currently under construction, and we welcome any contributions that can help us improve it. If you'd like to contribute, please fork this repository and create a new branch for your changes.
