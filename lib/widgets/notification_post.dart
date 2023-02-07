import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heroicons/heroicons.dart';

class NotificationPost extends StatelessWidget {
  final bool isReplay;
  NotificationPost(@required this.isReplay);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      // width: double.infinity,
      // color: Colors.lightBlue,
      // color: Colors.lightBlue,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // child: CircleAvatar(
            //   backgroundImage: AssetImage("assets/images/greg.jpg"),
            // ),
            child: Icon(Icons.notifications_outlined),
          ),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/greg.jpg"),
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/john.jpg"),
                            ),
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/james.jpg"),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 116, 116, 116),
                            icon: Icon(FontAwesomeIcons.ellipsis)),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                      text:
                          "Samuel , Abiy and Daniel liked a photo from Bereket",

                      // children: [
                      //   TextSpan(
                      //     text: "#noSence",
                      //     style: TextStyle(color: Colors.blue),
                      //     recognizer: TapGestureRecognizer()
                      //       ..onTap = () {
                      //         print("motherfuckker");
                      //       },
                      //   )
                      // ],
                      style: TextStyle(color: Colors.black, fontSize: 17)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
