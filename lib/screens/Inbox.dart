import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geezonline/widgets/notification_post.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: CircleAvatar(
            radius: 5,
            backgroundImage: AssetImage("assets/images/greg.jpg"),
          ),
        ),
        title: Text(
          "Messages",
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
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome to your inbox!",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Drop a line , share Tweets and more with private conversations between you and others on twitter",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 170,
              height: 50,
              // color: Colors.amber,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    splashFactory: NoSplash.splashFactory),
                // side: BorderSide(color: Colors.black, width: 3.0),
                onPressed: () {},

                child: Text(
                  "Write a message",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
