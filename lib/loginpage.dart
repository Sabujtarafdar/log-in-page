import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          children: [
            SizedBox(height:10),
          Image.asset('assets/img/h2.png',height:200),
        Text("Welcome",),
            TextField(),
          Text("to our application")

    ],
      ),
      ),
    );

  }
}
