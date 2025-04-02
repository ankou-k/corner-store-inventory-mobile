# Corner Store - Inventory Management Mobile App

For the web app, see: https://github.com/ankou-k/corner-store-inventory

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

# Assignment 8
**What is the purpose of const in Flutter? Explain the advantages of using const in Flutter code. When should we use const, and when should it not be used?**
In Flutter, const is used to define compile-time constants, meaning the values are determined at compile-time rather than runtime. This optimizes memory usage and hence improves performance by reusing instances of widgets and objects marked as const, rather than creating new instances each time. 
We should use const whenever possible for widgets, styles, and values that are fixed and won’t change over the app's lifetime, such as static labels, colors, and layouts. However, we should avoid const when the value or widget needs to be dynamic or change in response to user interaction or state changes, as these will require rebuilding with new values. 

**Explain and compare the usage of Column and Row in Flutter. Provide example implementations of each layout widget!**
In Flutter, Column and Row are essential for building structured UIs and are commonly used to organize the placement of UI elements. Column arranges its children in a vertical (top-to-bottom) layout, whereas Row arranges its children in a horizontal (left-to-right) layout. 
Here is an example of implementing Column:
Column(
  mainAxisAlignment: MainAxisAlignment.center,  // centers the children vertically
  crossAxisAlignment: CrossAxisAlignment.start, // aligns children to the start horizontally
  children: [
    Text('Hello, World!'),
    Text('Nice to meet you!'),
  ],
)
Here is an example of implementing row:
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,  //distributes space evenly around each child
  crossAxisAlignment: CrossAxisAlignment.center,      // centers children vertically
  children: [
    Icon(Icons.home),
    Icon(Icons.mood),
    Icon(Icons.settings),
  ],
)

**List the input elements you used on the form page in this assignment. Are there other Flutter input elements you didn’t use in this assignment? Explain!**
Input elements used on the form page:
- TextFormField: this is used for each input in the form (Name, Description, Amount, and Cost)
- ElevatedButton: this button is used to submit the form and trigger the validation checks

Input elements not used on the form page:
- DropdownButtonFormField: used for selection from a fixed list of options, such as categories or item types, making it a good choice when inputs are limited to predefined choices
- Checkbox / CheckboxListTile: useful for binary (true/false) inputs; for instance, it could be used to indicate product availability
- Radio / RadioListTile: used for selecting one option from multiple choices, such as picking between product conditions (new or used)
- Slider: rovides an interactive way to input a range value, which can be useful for quantities or prices within a defined range
- Switch: used for toggling a setting on or off, such as marking a product as featured or active

**How do you set the theme within a Flutter application to ensure consistency? Did you implement a theme in your application?**
To set a consistent theme throughout a Flutter application, I defined it in the MaterialApp widget’s theme property as a ThemeData element. I specified a colorScheme to create a consistent colour scheme throughout my application.

**How do you manage navigation in a multi-page Flutter application?**
In a multi-page Flutter application, navigation can be managed using Navigator and Route classes. For simple navigation, Navigator.push() and Navigator.pop() add and remove pages from the stack, while named routes, defined in MaterialApp, make it easier to manage multiple pages in larger apps. Additionally, Drawer provides an easy way to switch between main sections.

**Implementation of the Assignment**
1. I created 2 new directories screens/ and widgets/ in lib/
2. I moved menu.dart to lib/screens/ and updated the import statement in main.dart to reflect this
3. I created a form for product entry named product_entry_form.dart under screens.
4. I added 4 input fields into the form for product name, description, amount and cost.
5. I added validation for each input field not to be empty and to match the correct datatype.
6. I added a save button to the form
7. I added a popup that displays the added data when the save button is clicked
8. I added a navigation drawer lib/widgts/left_drawer.dart and created 2 navigational buttons in it, one for the homepage and one for the adding product form and i connected them
9. I moved the ItemCard and ItemHomepage out of menu.dart to a new file lib/widgets/menu_button_cards.dart and added a navigation feature for the Add Product button to redirect to the product entry form
10. I added an import for menu_button_cards.dart into menu.dart
11. I added the left drawer into the menu.dart page
12. I tested the application to ensure it worked as expected

# Assignment 9
**Implementation of Assignment**
1. I created a new django-app named authentication in my Django project and added it to INSTALLED_APPS
python manage.py startapp authentication
2. I ran pip install django-cors-headers and added code to settings.py to use corsheaders in my application
3. I created the following views in authentication/views.py : login, register, logout and imported them into authentication/urls.py after creating urls.py
4. I ran the following commands in order to integrate authentication in flutter:
flutter pub add provider
flutter pub add pbp_django_auth
5. I created a login.dart and register.dart screens in my flutter app and connected them to the main.dart page.
6. I created a flutter model by using the results of the json/ endpoint and Quicktype website
7. I ran the command below and updated the android/app/src/main/AndroidManifest.xml file to access the internet
flutter pub add http
8. I created a new screen in flutter to list out all the product data, and I created a navigation icon for it in the left drawer, as well as connected it to the main page.
9. I created a views.py function and  url endpoint in my django app for creating a product in flutter.
10. I connected the flutter product entry to CookieRequest, allowing for the creation of new products through the flutter app being imported into the db
11. In flutter lib/widgets/menu_button_cards.dart, I created the logout functionality
12. I added the product details page


**Explain why we need to create a model to retrieve or send JSON data. Will an error occur if we don't create a model first?**
Creating a model in Django provides a structured way to define and interact with the data, ensuring consistency when storing, retrieving, or processing it. Models also enable easy serialization of data into JSON format, which is important for APIs that communicate with frontends like Flutter. Without a model, an error won’t necessarily occur, but handling the data manually could lead to inefficiencies or bugs due to the lack of benefits of validation, structure, and ORM features that a model provides.

**Explain the function of the http library that you implemented for this task.**
The http library in Flutter facilitates communication with Django by sending HTTP requests (e.g., GET, POST) to the backend and processing responses (e.g., JSON data). This allows the Flutter app to perform tasks like user authentication, data retrieval, or updates by interacting with Django’s endpoints.

**Explain the function of CookieRequest and why it’s necessary to share the CookieRequest instance with all components in the Flutter app.**
CookieRequest is responsible for managing cookies, maintaining session data, and ensuring stateful communication between the Flutter app and Django. By sharing a single CookieRequest instance across components, the app ensures consistency in authentication and user state, such as keeping users logged in across different screens. Without a shared instance, maintaining session continuity and managing user-specific data would be difficult.

**Explain the mechanism of data transmission, from input to display in Flutter.**
When a user inputs data in Flutter (e.g., a form), the app sends the data to the Django backend using the http library. Django processes this data, possibly interacting with its database, and responds with a JSON object. Flutter parses the JSON response and updates the UI using widgets to display the data dynamically. This process ensures real-time or near-real-time updates based on user interactions.

**Explain the authentication mechanism from login, register, to logout. Start from inputting account data in Flutter to Django’s completion of the authentication process and display of the menu in Flutter.**
In the Flutter app, when a user inputs login or registration details, the app sends the data (via POST request) to Django's endpoints, eg. /login or /register. Django validates the credentials or creates a new user, returning a response with a session cookie or authentication token if successful. This token is stored in CookieRequest for subsequent requests. During logout, the app sends a request to Django’s /logout endpoint, clearing the session. After each authentication step, Flutter updates the UI, such as navigating to the main menu after login or showing a success message after registration.
