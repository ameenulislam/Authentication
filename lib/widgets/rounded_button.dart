import "package:flutter/material.dart";
import '../constants.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({@required this.onPressed, @required this.title});
  final Function onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: RaisedButton(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          onPressed: onPressed,
          child:
              Text(title.toUpperCase(), style: TextStyle(color: Colors.white)),
          color: kPrimaryColor,
        ),
      ),
    );
  }
}
