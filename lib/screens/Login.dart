import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geezonline/widgets/Button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  void logUser() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text, password: passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Icon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
        // title: Text(font , style: TextStyle(color: Colors.blue),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
            child: Text("So what's happening in the world right now",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          ),
          Container(
            child: Column(
              children: [
                TextField(
                  controller: emailController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Email',
                  ),
                ),
                TextField(
                  controller: passwordController,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    hintText: 'Password',
                  ),
                ),
                ElevatedButton(onPressed: logUser, child: Text("Log in"))
                // AppleBtn1(
                //   onPressed: () {},
                //   brand: 'Apple',
                //   link:
                //       'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/socials%2Fapple-black-logo.png?alt=media&token=c44581fa-6fd2-4ae2-bd85-18bfbe6386d2',
                // ),
                // AppleBtn1(
                //   onPressed: () {},
                //   brand: 'Google',
                //   link:
                //       'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/crypto%2Fsearch%20(2).png?alt=media&token=24a918f7-3564-4290-b7e4-08ff54b3c94c',
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
