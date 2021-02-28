import 'package:flutter/material.dart';

import '../constants.dart';

class PasswordField extends StatelessWidget {
  final controller;
  const PasswordField({@required this.controller});

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
          obscureText: true,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Your password",
              icon: Icon(
                Icons.lock,
                color: kPrimaryColor,
              ),
              suffixIcon: Icon(
                Icons.visibility,
                color: kPrimaryColor,
              )),
        ));
  }
}
