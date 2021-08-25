import 'package:flutter/material.dart';
import 'package:frontend/constants/color_constant.dart';
import 'package:frontend/screens/home_screen.dart';
import 'package:frontend/screens/intro/intro_1.dart';
import 'package:frontend/screens/login_screen.dart';
import 'package:frontend/screens/otp_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HomeCare',
        theme: ThemeData(fontFamily: 'Roboto', primaryColor: mPrimaryColor),
        home: HomeScreen(),
      ),
    );
  }
}
