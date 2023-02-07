import 'package:flutter/material.dart';

import 'package:geezonline/Tutorial/provider.dart';
import 'package:geezonline/screens/Inbox.dart';
import 'package:geezonline/screens/Login.dart';
import 'package:geezonline/screens/Notification.dart';
import 'package:geezonline/screens/SearchPage.dart';
import 'package:geezonline/screens/auth_page.dart';
import 'package:geezonline/screens/home_screen.dart';
import 'package:geezonline/screens/post_detail.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// class TwitterClone extends StatelessWidget {
//   const TwitterClone({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyHomePage(),
//       // home: HomeScreen(),
//     );
//   }
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      // home: MyApp(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => AuthPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/postDetail': (context) => const PostDetailWidget(),
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: AuthPage(),
    );
  }
}
