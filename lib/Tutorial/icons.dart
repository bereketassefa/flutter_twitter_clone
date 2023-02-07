import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class icons extends StatelessWidget {
  const icons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      child: IconButton(
        onPressed: () {},
        iconSize: 100,
        splashColor: Colors.black87,
        icon: const Icon(FontAwesomeIcons.airbnb),
      ),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black, width: 3)),
    );
  }
}
