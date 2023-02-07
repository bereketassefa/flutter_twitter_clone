import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geezonline/widgets/Post.dart';

class PostDetailWidget extends StatelessWidget {
  const PostDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/');
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        title: Text("Detail", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
          child: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/greg.jpg")),
            title: Text("Bereket"),
            subtitle: Text("@bereket"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            child: RichText(
              text: TextSpan(
                  text:
                      "By continuing you agree the By continuing you agree the By continuing you agree the By continuing you agree the By continuing you agree the By continuing you agree the By continuing you agree the By continuing you agree the By continuing you agree the By ",
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
                  style: TextStyle(color: Colors.black, fontSize: 19)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text: "3:34",
                  children: [
                    TextSpan(
                      text: "  23/3/34",
                      style:
                          TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
                    ),
                    TextSpan(
                      text: "  Twitter for iOS",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                  style: TextStyle(
                      color: Color.fromARGB(255, 137, 137, 137), fontSize: 19)),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: .2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: RichText(
              text: TextSpan(
                  text: "92.7k",
                  children: [
                    TextSpan(
                      text: "  Retweet",
                      style:
                          TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
                    ),
                    TextSpan(
                      text: "  200.3k",
                    ),
                    TextSpan(
                      text: "  Likes",
                      style:
                          TextStyle(color: Color.fromARGB(255, 137, 137, 137)),
                    ),
                  ],
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 19)),
            ),
          ),
          Divider(
            color: Colors.black,
            thickness: .2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 15),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  // <-- Icon
                  color: Colors.black,
                  FontAwesomeIcons.eye,
                  size: 24.0,
                ),
                label:
                    Text('', style: TextStyle(color: Colors.black)), // <-- Text
              ),
              TextButton.icon(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 15),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  // <-- Icon
                  color: Colors.black,
                  FontAwesomeIcons.comment,
                  size: 24.0,
                ),
                label:
                    Text('', style: TextStyle(color: Colors.black)), // <-- Text
              ),
              TextButton.icon(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 15),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  // <-- Icon
                  color: Colors.black,
                  FontAwesomeIcons.retweet,
                  size: 24.0,
                ),
                label:
                    Text('', style: TextStyle(color: Colors.black)), // <-- Text
              ),
              TextButton.icon(
                style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 15),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  // <-- Icon
                  size: 24,
                  color: Colors.black,
                  FontAwesomeIcons.heart,
                  // size: 24.0,
                ),
                label:
                    Text('', style: TextStyle(color: Colors.black)), // <-- Text
              ),
            ],
          ),
          Divider(
            color: Colors.black,
            thickness: .2,
          ),
          PostWidget(true)
        ],
      )),
    );
  }
}
