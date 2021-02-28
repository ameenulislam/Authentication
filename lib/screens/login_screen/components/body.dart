import 'package:authentication/auth.dart';
import 'package:authentication/constants.dart';
import 'package:authentication/screens/login_screen/components/background.dart';
import 'package:authentication/widgets/email_field.dart';
import 'package:authentication/widgets/pass_field.dart';
import 'package:authentication/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String status = "no-action";
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passController = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return Background(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              width: size.width * 0.6,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            EmailField(
              controller: emailController,
              hintText: "Your email",
              icon: Icons.person,
            ),
            SizedBox(height: size.height * 0.02),
            PasswordField(
              controller: passController,
            ),
            SizedBox(height: size.height * 0.02),
            RoundedButton(
              onPressed: () {
                setState(() {
                  status = "loading";
                });
                context
                    .read<AuthService>()
                    .signIn(
                        emailController.text.trim(), passController.text.trim())
                    .then((result) {
                  if (result) {
                    Navigator.of(context).pushReplacementNamed('/home');
                  } else {
                    setState(() {
                      status = "rejected";
                    });
                  }
                });
              },
              title: "Login",
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(color: kPrimaryColor),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed("/signup");
                  },
                  child: Text(
                    " Sign up",
                    style: TextStyle(
                        color: kPrimaryColor, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
