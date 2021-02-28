import 'package:flutter/material.dart';

import '../../../constants.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.height * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: kPrimaryColor),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Widget buildDivider() {
    return Expanded(
        child: Divider(
      color: kPrimaryColor,
      height: 2.5,
    ));
  }
}
