import 'package:flutter/material.dart';
import 'package:corner_store_mobile/screens/menu.dart';
import 'package:corner_store_mobile/screens/product_entry_form.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
            DrawerHeader(
                // Drawer header section
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                ),
                child: const Column(
                    children: [
                        Text(
                            'Corner Store Inventory Tracker',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                            ),
                        ),
                        Padding(padding: EdgeInsets.all(8)),
                        Text(
                            "Track your inventory every day here!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                            ),
                        ),
                    ],
                ),
            ),
            // Routing section
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home Page'),
                // Redirection part to MyHomePage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MyHomePage(),
                    ));
                },
            ),
            ListTile(
                leading: const Icon(Icons.mood),
                title: const Text('Add Product'),
                // Redirection part to ProductEntryFormPage
                onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductEntryFormPage(),
                    ));
                },
            ),
        ],
      ),
    );
  }
}