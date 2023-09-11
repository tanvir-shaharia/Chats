import 'package:flutter/material.dart';

import 'myDrwerHeader.dart';


class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: SingleChildScrollView(
          child:Column(
            children: [
              const MyHeaderDrawer(),
              MyDrawerList()
            ],
          ),

        ),

      );
  }
}

Widget MyDrawerList() {
  return Container(
    padding: const EdgeInsets.only(
      top: 5.0,left: 5.0,right: 5.0
    ),
    child: Column(
      // shows the list of menu drawer
      children: [

        menuItem(1, "Chats", Icons.chat,true),
        menuItem(2, "Marketplace", Icons.sell_outlined,true),
        menuItem(3, "Message request", Icons.add_card_outlined,true),
        menuItem(4, "Archive", Icons.delete_outline,true),
        const Divider(),
        menuItem(5, "Settings", Icons.settings_outlined,true),
        menuItem(6, "Notifications", Icons.notifications_outlined,true),
        const Divider(),
        menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,true),
        menuItem(8, "Send feedback", Icons.feedback_outlined,true),
      ],
    ),
  );
}

Widget menuItem(int id, String title, IconData icon, bool selected) {
  return Material(
    color: selected ? Colors.grey[300] : Colors.transparent,
    child: InkWell(
      onTap: () {
      },
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Icon(
                icon,
                size: 20,
                color: Colors.black,
              ),
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}