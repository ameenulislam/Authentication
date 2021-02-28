import 'package:authentication/auth.dart';
import 'package:authentication/constants.dart';
import 'package:authentication/screens/signup_screen/components/or_divider.dart';
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
  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passController = TextEditingController();
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              width: size.width * 0.5,
            )),
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              width: size.width * 0.5,
            )),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              SvgPicture.asset("assets/icons/signup.svg"),
              SizedBox(
                height: size.height * 0.02,
              ),
              EmailField(
                hintText: "Your email",
                icon: Icons.person,
                controller: emailController,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              PasswordField(
                controller: passController,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                  onPressed: () {
                    context
                        .read<AuthService>()
                        .signUp(emailController.text.trim(),
                            passController.text.trim())
                        .then((result) {
                      if (result) {
                        Navigator.of(context).pushReplacementNamed('/home');
                      }
                    });
                  },
                  title: "Sign up"),
              SizedBox(
                height: size.height * 0.02,
              ),
              OrDivider(),
              SizedBox(
                height: 0.02,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialIcon(
                      iconSrc: "assets/icons/facebook.svg",
                    ),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    SocialIcon(iconSrc: "assets/icons/google-plus.svg"),
                    SizedBox(
                      width: size.width * 0.02,
                    ),
                    SocialIcon(iconSrc: "assets/icons/twitter.svg")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  const SocialIcon({@required this.iconSrc});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: kPrimaryColor),
          shape: BoxShape.circle),
      child: SvgPicture.asset(
        iconSrc,
        height: 20,
        width: 20,
      ),
    );
  }
}
