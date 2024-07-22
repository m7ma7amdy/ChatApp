import 'package:flutter/material.dart';
import '../services/auth/auth_service.dart';
import '../pages/settings_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  void logout() {
    // Get auth service
    final auth = AuthService();
    auth.signOut();
  }
  @override
  Widget build(BuildContext context) {
  return Drawer(
    backgroundColor: Theme.of(context).colorScheme.surface,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Icon(
                  Icons.message,
                  color: Theme.of(context).colorScheme.primary,
                  size: 40,
                ), // Icon
              ), // Center
            ), // DrawerHeader
            // Home list tile
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                title: const Text("H O M E"),
                leading: const Icon(Icons.home),
                onTap: () {
                  Navigator.pop(context);
                },
              ), // ListTile
            ), // Padding
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                title: const Text("S E T T I N G S"),
                leading: const Icon(Icons.settings),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder:
                  (context)=>const SettingsPage(),
                  ));
                },
              ), // ListTile
            ), // Padding
          ], // Column children
        ), // Column
        // Logo
        Padding(
          padding: const EdgeInsets.only(left: 25.0, bottom: 25),
          child: ListTile(
            title:const Text("L O G O U T"),
            leading: const Icon(Icons.logout),
            onTap:logout,
          ), // ListTile
        ), // Padding
      ], // Column children
    ), // Column
  ); // Drawer
}
}
