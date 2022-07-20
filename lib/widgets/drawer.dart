import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          DrawerHeader(
            margin: EdgeInsets.zero,
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text(
                "Siddhesh Bhupendra Kukade",
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: Text(
                "littlelord124@gmail.com",
                style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1658308149858-09492efbc842?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80")),
            ),
          ),
          ListTile(
            leading: Icon(CupertinoIcons.home, color: Colors.deepPurple),
            title: Text(
              "Home",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
          ListTile(
            leading:
                Icon(CupertinoIcons.profile_circled, color: Colors.deepPurple),
            title: Text(
              "Profile",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
          ListTile(
            leading:
                Icon(CupertinoIcons.shopping_cart, color: Colors.deepPurple),
            title: Text(
              "Shop",
              textScaleFactor: 1.3,
              style: TextStyle(color: Colors.deepPurple),
            ),
          ),
        ],
      ),
    );
  }
}
