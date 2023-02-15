import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geezonline/widgets/Button.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
  var issignup = true;

  void signInWithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential user =
        await FirebaseAuth.instance.signInWithCredential(credential);
    print(user.user?.displayName);
  }

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 35),
            child: Text("So what's happening in the world right now",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          ),
          Column(
            children: [
              GoogleBtn1(
                onPressed: signInWithGoogle,
              )
            ],
          )
        ],
      ),
    );
  }
}
