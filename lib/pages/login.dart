import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: Container(
          color: Colors.amber,
          width: 340,
          height: 500,
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Image.asset("assets/logo_DeklinAPP.png")
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}