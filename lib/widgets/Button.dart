import 'package:flutter/material.dart';

class AppleBtn1 extends StatelessWidget {
  final Function() onPressed;
  final String brand;
  final String link;
  AppleBtn1(
      {required this.onPressed,
      required this.brand,
      required this.link,
      Key? key})
      : super(key: key);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 54,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: TextButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                link,
                width: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(brand, style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
          ),
          onPressed: onPressed,
        ));
  }
}
