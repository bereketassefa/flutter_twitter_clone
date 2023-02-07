import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class listvieww extends StatelessWidget {
  const listvieww({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(context);
    return ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.abc),
            ),
            title: Text("Leading"),
            subtitle: Text("Subtite"),
            trailing: CircleAvatar(
              child: Icon(Icons.abc),
            ),
            onTap: () {}),
        ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.abc),
            ),
            title: Text("Leading"),
            subtitle: Text("Subtite"),
            trailing: CircleAvatar(
              child: Icon(Icons.abc),
            ),
            onTap: () {}),
        ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.abc),
            ),
            title: Text("Leading"),
            subtitle: Text("Subtite"),
            trailing: CircleAvatar(
              child: Icon(Icons.abc),
            ),
            onTap: () {}),
      ],
    );
  }
}
