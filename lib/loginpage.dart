import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            SizedBox(height: 20),
            Image.asset('assets/img/h2.png', height: 200),
            Column(
              children: [
                Text(
                  "Welcome",
                  textAlign: TextAlign.right,
                  style: (TextStyle(
                      fontSize: 50, color: Color.fromARGB(255, 201, 9, 73))),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  "to Our application",
                  textAlign: TextAlign.right,
                  style: (TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 35, 201, 9))),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type Your E-Mail or Phone ",
                      labelText: "E-mail or phone",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                      suffixIcon: Icon(Icons.phone),
                      fillColor: Color.fromARGB(255, 143, 35, 237),
                      filled: true,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                  ),
                )
              ],
            ),
            Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type Your password",
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.security),
                    suffixIcon: IconButton(
                      icon:
                          Icon(_secureText ? Icons.remove_red_eye : Icons.key),
                      onPressed: () {
                        setState(() {
                          _secureText = !_secureText;
                        });
                      },
                    ),
                    fillColor: Color.fromARGB(255, 107, 52, 225),
                    filled: true,
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _secureText,
                  maxLength: 12,
                ),
              ),
              RaisedButton(
                onPressed: () {},
                color: Color.fromARGB(255, 118, 62, 223),
                child: Text(
                  "log in",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
