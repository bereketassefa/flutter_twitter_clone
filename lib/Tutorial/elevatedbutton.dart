import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geezonline/Tutorial/icons.dart';

class Elevated extends StatelessWidget {
  const Elevated({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(shape: StadiumBorder()
            // shadowColor: Colors.transparent,
            // primary: Colors.yellow,
            // elevation: 0,
            // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            // side: BorderSide(color: Colors.black, width: 3.0),
            // onPrimary: Colors.black,
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.verified_user_sharp),
            Text("Let's go"),
          ],
        ));
  }
}
