import 'package:flutter/material.dart';
import 'package:corner_store_mobile/screens/product_entry_form.dart';

class ItemHomepage {
    final String name;
    final IconData icon;
    final MaterialColor color;

    ItemHomepage(this.name, this.icon, this.color);
}

class ItemCard extends StatelessWidget {
  // Display the card with an icon and name.

  final ItemHomepage item; 
  
  const ItemCard(this.item, {super.key}); 

  @override
  Widget build(BuildContext context) {
    return Material(
      // Specify the background color of the application theme.
      color: item.color,
      // Round the card border.
      borderRadius: BorderRadius.circular(12),
      
      child: InkWell(
        // Action when the card is pressed.
        onTap: () {
          // Display the SnackBar message when the card is pressed.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text("You have pressed the ${item.name} button!"))
            );

          // Navigate to the appropriate route (depending on the button type)
          if (item.name == "Add Product") {
            // Use Navigator.push to navigate to a MaterialPageRoute that includes ProductEntryFormPage.
            Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductEntryFormPage(),
                    ));
          }
        },
        // Container to store the Icon and Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Place the Icon and Text in the center of the card.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}