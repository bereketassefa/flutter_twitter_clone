import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heroicons/heroicons.dart';

class SidebarWidget extends StatelessWidget {
  SidebarWidget({Key? key}) : super(key: key);

  // final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Colors.white),
        accountName: Text("Beki", style: TextStyle(color: Colors.black)),
        accountEmail: Text("Bereket.a.gedefaw@gmail.com",
            style: TextStyle(color: Colors.black)),
        currentAccountPicture: CircleAvatar(
          foregroundImage: AssetImage("assets/images/greg.jpg"),
        ),
        // otherAccountsPictures: [
        //   CircleAvatar(
        //     foregroundImage: AssetImage("assets/images/greg.jpg"),
        //   ),
        //   CircleAvatar(
        //     foregroundImage: AssetImage("assets/images/greg.jpg"),
        //   ),
        // ],
      ),
      // ListTile(
      //   leading: Icon(Icons.add),
      //   title: Text("first"),
      //   onTap: () {},
      // ),
      ListTile(
        leading: Icon(FontAwesomeIcons.comment),
        title: Text("Topics"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.bookmark),
        title: Text("Bookmarks"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.list),
        title: Text("Lists"),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text("Log out"),
        onTap: () {
          FirebaseAuth.instance.signOut();
        },
      ),

      // Text("data")

      // );
    ]);
  }
}
