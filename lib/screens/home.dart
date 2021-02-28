import 'package:authentication/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Yay !"),
            RaisedButton(
              onPressed: () {
                context.read<AuthService>().signOut().then((value) {
                  if (value) {
                    Navigator.of(context).pushReplacementNamed('/welcome');
                  }
                });
              },
              child: Text(
                "logout",
                style: TextStyle(color: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }
}
