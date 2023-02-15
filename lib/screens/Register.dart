import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geezonline/widgets/Button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var showLoader = false;
  var message = "";

  void logUser() async {
    setState(() {
      this.showLoader = true;
    });
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
    } on FirebaseAuthException catch (e) {
      setState(() {
        this.message = e.message!;
      });
      // print(e.message);
    }
    this.showLoader = false;
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
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          this.showLoader ? CircularProgressIndicator() : Text(""),
          this.message.length != 0 ? Text(this.message) : Text(""),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.bottom,
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.bottom,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                          width: 3, color: Colors.greenAccent), //<-- SEE HERE
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: logUser,
                    child: Text("Sign up"),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: OutlinedButton(
                    onPressed: logUser,
                    child: Text("Sign up"),
                  ),
                )
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
