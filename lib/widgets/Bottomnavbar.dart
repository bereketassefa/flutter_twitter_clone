import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  var currState = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
