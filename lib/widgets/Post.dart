import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:heroicons/heroicons.dart';

class PostWidget extends StatelessWidget {
  final bool isReplay;
  PostWidget(@required this.isReplay);

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
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/greg.jpg"),
            ),
          ),
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: 'NASA ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: '@NASA',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w400)),
                              TextSpan(
                                  text: '  1hr',
                                  style:
                                      TextStyle(fontWeight: FontWeight.w400)),
                              isReplay
                                  ? TextSpan(
                                      text: '  Replaying to @cc',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400))
                                  : TextSpan(text: ""),
                            ],
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            color: Color.fromARGB(255, 116, 116, 116),
                            icon: Icon(FontAwesomeIcons.ellipsis)),
                      ],
                    ),
                  ],
                ),
                RichText(
                  text: TextSpan(
                      text:
                          "The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog.",
                      children: [
                        TextSpan(
                          text: "#noSence",
                          style: TextStyle(color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print("motherfuckker");
                            },
                        )
                      ],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w100)),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton.icon(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 12),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        color: Colors.black,
                        FontAwesomeIcons.eye,
                        size: 18.0,
                      ),
                      label: Text('23',
                          style: TextStyle(color: Colors.black)), // <-- Text
                    ),
                    TextButton.icon(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 12),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        color: Colors.black,
                        FontAwesomeIcons.comment,
                        size: 18.0,
                      ),
                      label: Text('34',
                          style: TextStyle(color: Colors.black)), // <-- Text
                    ),
                    TextButton.icon(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 12),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        color: Colors.black,
                        FontAwesomeIcons.retweet,
                        size: 18.0,
                      ),
                      label: Text('34',
                          style: TextStyle(color: Colors.black)), // <-- Text
                    ),
                    TextButton.icon(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 12),
                        ),
                      ),
                      onPressed: () {},
                      icon: Icon(
                        // <-- Icon
                        size: 17,
                        color: Colors.black,
                        FontAwesomeIcons.heart,
                        // size: 24.0,
                      ),
                      label: Text('23',
                          style: TextStyle(color: Colors.black)), // <-- Text
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
