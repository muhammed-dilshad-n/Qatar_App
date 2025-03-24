import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Center(
                  child: SizedBox(
                    width: 70,
                    height: 30,
                    child: Image.asset(
                      "assets/images/d4d4.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info),
            onTap: () {},
          ),
          ListTile(
            title: Text("Contact"),
            leading: Icon(Icons.phone),
            onTap: () {},
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
