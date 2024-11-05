# corner_store_mobile

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Assignment 7
**Explain what are stateless widgets and stateful widgets, and explain the difference between them.**
State is the data that is used by the app. Stateless widgets are ones which do not store any mutable state, meaning that they do not change on their own through internal behaviour. Stateless widgets are used for UI elements that do not depend on dynamic data, such as for displaying static text, icons, etc. On the other hand, stateful widgets store a state which can change over time based on user interactions, data, etc. When the state of a stateful widget changes, it triggers the rebuilding of that widget. The key differences between stateless and stateful widgets are: 
- Stateless widgets are immutable, while stateful widgets are mutable
- Stateless widgets are only rebuilt if the parent widget changes, while stateful widgets rebuild when setState() is called on it
- Stateless widgets are used for static content and non-interactive UI elements, while stateful widgets are used for interactive, dynamic content
- Stateless widgets are generally more lightweight, whereas stateful widgets generally consume more resources due to state management

**Mention the widgets that you have used for this project and its uses.**
I used a variety of widgets for this project:
1. Scaffold: Provides the basic layout structure for the app, including an AppBar and a body.
2. AppBar: Displays a title ("The Corner Store") at the top of the screen and sets its background color.
3. Padding: Adds space around the widgets to provide padding in the layout.
4. Column: Arranges widgets vertically in the body, including a nested Row and another Column.
5. Row: Arranges InfoCard widgets horizontally, displaying information like "NPM," "Name," and "Class."
6. InfoCard: A custom widget that displays a title and content inside a Card, which has a shadow and padding.
7. Card: Provides a material design card layout for InfoCard, giving it an elevated look with rounded corners.
8. SizedBox: Adds vertical space between widgets to separate them visually.
9. Center: Centers its child widget, which in this case is a Column.
10. Text: Displays static text such as "Welcome to The Corner Store" and "Counter" labels.
11. GridView.count: Creates a 3-column grid layout to display ItemCard widgets for each item in the items list.
12. ItemCard: A custom widget displaying an icon and name for each item in the items list using a color, icon, and InkWell.
13. Material: Sets the background color of the ItemCard and applies rounded corners to create a card-like look.
14. InkWell: Adds a tappable effect to ItemCard widgets, displaying a SnackBar message when tapped.
15. Icon: Displays an icon (e.g., mood, add, logout) within each ItemCard.
16. SnackBar: Shows a temporary message when an item card is pressed, indicating the selected action.
17. MyHomePage: A custom widget containing all the other widgets.

**What is the use-case for setState()? Explain the variable that can be affected by setState().**
The setState() method is used in Flutter to update the state of a StatefulWidget and trigger a rebuild of the widget’s UI with the new data. It is needed to build interactive and dynamic widgets because it allows the app to react to changes (eg. user input), by updating specific parts of the widget tree without needing to rebuild the entire app. The variables affected by setState() are those defined within the State class of a StatefulWidget, such as inside the  _MyHomePageState class I deleted from main.dart

**Explain the difference between const and final keyword.**
In Dart, both `final` and `const` are used to declare variables that can’t be modified after assignment, but they differ in when and how they are assigned. `final` variables can only be assigned once, but their value can be determined at runtime, making them useful for values that aren’t known until the app runs. On the other hand, `const` variables must be assigned a value at compile-time, and they are deeply immutable, meaning everything within the object is also constant. This makes `const` ideal for fixed configurations or hardcoded values that don’t change. In short, use `final` for single-assignment variables known at runtime, and `const` for compile-time constants to optimize memory and performance.

**Implementation of the Assignment**
1. I created a new flutter app and navigated into it by running
flutter create corner_store_mobile
cd corner_store_mobile
2. I created a new remote repository for this project and performed a git init and add-commit-push
git init
git add *
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/ankou-k/corner-store-inventory-mobile
git push -u origin main
3. I created a file named menu.dart under corner_store_mobile/lib and added the following line to the top:
import 'package:flutter/material.dart';
4. I deleted the classes MyHomePage and _MyHomePageState from main.dart
5. I added the following stateless MyHomePage class to menu.dart:
class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});

    @override
    Widget build(BuildContext context) {
	return Scaffold(
        //
	);
    }
}
6. I changed home: const MyHomePage(title: 'Flutter Demo Home Page'), to home: MyHomePage(), and added the following line to the top of main.dart to import MyHomePage from menu.dart
import 'package:corner_store_mobile/menu.dart';
7. I changed the color scheme in main.dart from deepPurple to orange.
8. I created variables in class MyHomePage to store my the NPM, name, and class.
9. I created a class InfoCard in menu.dart that will display the NPM, name, and class.
10. I created a class ItemHomepage that will contain the name, icon, and material color of the button card that I will create.
11. I added a list to ItemHomepage instances into the MyHomePage class that contained buttons View Product List, Add Product, and Logout each of different color.
12. I created an ItemCard class that displays each button. The button displays a message "You have pressed the [button name] button." in the snackbar.
13. I added the InfoCard and ItemCard into the Widget build() section of the MyHomePage class in orer to have them display on the home page.
14. I tested my app and then pushed it to github.