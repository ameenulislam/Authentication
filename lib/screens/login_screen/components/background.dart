import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  Background({@required this.child});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              child: Image.asset("assets/images/main_top.png",
                  width: size.width * 0.5)),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/login_bottom.png",
                width: size.width * 0.5,
              )),
          child
        ],
      ),
    );
  }
}
