import 'package:flutter/material.dart';

import '../constants.dart';

class EmailField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final controller;
  const EmailField({
    @required this.controller,
    @required this.hintText,
    @required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        width: size.width * 0.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(29), color: kPrimaryLightColor),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              icon: Icon(
                icon,
                color: kPrimaryColor,
              )),
        ));
  }
}
