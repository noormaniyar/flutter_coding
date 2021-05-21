import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Nooruddin Maniyar"),
                accountEmail: Text("nooruddin2727@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "data:image/jpeg;base64,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", scale: 1
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text
              (
                "Home",
                textScaleFactor: 1.2, 
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text
              (
                "Profile",
                textScaleFactor: 1.2, 
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text
              (
                "Email",
                textScaleFactor: 1.2, 
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}