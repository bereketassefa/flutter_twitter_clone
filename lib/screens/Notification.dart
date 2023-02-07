import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geezonline/widgets/notification_post.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.person_outline,
          color: Colors.black,
        ),
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          NotificationPost(false),
          NotificationPost(false),
          NotificationPost(false),
          NotificationPost(false),
          NotificationPost(false),
        ],
      ),
    );
  }
}
