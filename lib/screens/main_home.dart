import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geezonline/screens/Inbox.dart';
import 'package:geezonline/screens/Notification.dart';
import 'package:geezonline/screens/SearchPage.dart';
import 'package:geezonline/screens/post_detail.dart';
import 'package:geezonline/widgets/Bottomnavbar.dart';
import 'package:geezonline/widgets/Post.dart';
import 'package:geezonline/widgets/sidebar.dart';
import 'package:heroicons/heroicons.dart';

class MainHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Icon(
          FontAwesomeIcons.twitter,
          color: Colors.blue,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        // leading: IconButton(
        //   onPressed: () {},
        //   icon: HeroIcon(
        //     HeroIcons.userCircle,
        //     solid: false, // Outlined icons are used by default.
        //     color: Colors.black,
        //     size: 30,
        //   ),
        // ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: HeroIcon(
              HeroIcons.sparkles,
              solid: false, // Outlined icons are used by default.
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),

      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            child: PostWidget(false),
            onTap: () {
              // Navigate to the second screen using a named route.
              Navigator.pushNamed(context, '/postDetail');
            },
          );
        },
        itemCount: 8,
      ),
      // body: PostDetailWidget(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.right,
      // extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(FontAwesomeIcons.pen),
      ),

      drawer: Drawer(
        child: SidebarWidget(),
      ),
    );
  }
}
