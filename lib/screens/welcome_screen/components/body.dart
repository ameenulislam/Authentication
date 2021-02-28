import 'package:authentication/constants.dart';
import 'package:authentication/screens/welcome_screen/components/background.dart';
import 'package:authentication/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hello! Welcome to the app ",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.4,
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            RoundedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/login");
                },
                title: "Login"),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              width: size.width * 0.8,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  color: kPrimaryLightColor,
                  onPressed: () {
                    Navigator.of(context).pushNamed("/signup");
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
