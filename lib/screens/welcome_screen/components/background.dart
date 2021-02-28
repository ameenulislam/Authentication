import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    @required this.child,
  });
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
            child: Image.asset("assets/images/main_top.png"),
          ),
          Positioned(
              left: 0,
              bottom: 0,
              child: Image.asset("assets/images/main_bottom.png")),
          child,
        ],
      ),
    );
  }
}
