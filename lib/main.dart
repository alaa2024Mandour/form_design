import 'package:flutter/material.dart';
import 'package:formdesign/personal.dart';

import 'forgotPass.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginPage(),
    );
  }
}

