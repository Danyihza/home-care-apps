import 'package:flutter/material.dart';
import 'package:frontend/constants/color_constant.dart';
import 'package:frontend/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomeCare',
      theme: ThemeData(fontFamily: 'Roboto', primaryColor: mPrimaryColor),
      home: LoginScreen(),
    );
  }
}
