import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geezonline/screens/Flutterbricks.dart';
import 'package:geezonline/screens/Inbox.dart';
import 'package:geezonline/screens/Notification.dart';
import 'package:geezonline/screens/SearchPage.dart';
import 'package:geezonline/screens/main_home.dart';
import 'package:geezonline/screens/post_detail.dart';
import 'package:geezonline/widgets/Bottomnavbar.dart';
import 'package:geezonline/widgets/Post.dart';
import 'package:geezonline/widgets/sidebar.dart';
import 'package:heroicons/heroicons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser;
  var currState = 0;
  final Screens = [
    MainHome(),
    // TopBarFb2(title: "Welcome back", upperTitle: user.email),
    Search(),
    NotificationPage(),
    // PostDetailWidget(),
    InboxPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screens[currState],
      // body: ListView.builder(
      //   itemBuilder: (context, index) {
      //     return PostWidget(false);
      //   },
      //   itemCount: 8,
      // ),
      // body: PostDetailWidget(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.right,
      // extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.pen),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            this.currState = index;
          });
        },
        currentIndex: currState,
        iconSize: 28,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail_outline),
            label: "",
          ),
        ],
      ),
      drawer: Drawer(
        child: SidebarWidget(),
      ),
    );
  }
}
