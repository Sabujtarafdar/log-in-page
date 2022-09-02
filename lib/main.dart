import 'package:flutter/material.dart';
import 'package:loginui/loginpage.dart';








void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter login UI',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

    );
  }
}
