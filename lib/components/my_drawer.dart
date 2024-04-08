import 'package:deli/components/my_drawer_tile.dart';
import 'package:deli/pages/settings_page.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 100.0),
            // app logo
            child: Icon(
              Icons.lock_open_rounded, size: 40
          ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
              //home list title
              MyDrawerTile(text: "H O M E", icon: Icons.home, onTap: () => Navigator.pop(context)),
            
              //settings list title
              MyDrawerTile(
                text: "S E T T I N G S", 
                icon: Icons.settings, 
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingsPage()));
                }),

              //spacer to create a space in between the list tiles
              const Spacer(),
            
              //logout list title
              MyDrawerTile(text: "L O G O U T", icon: Icons.logout, onTap: () {}),

              //sized box
              const SizedBox(height: 25),

        ]
      ),
    );
  }
}