import 'package:flutter/material.dart';
import 'package:frontend/constants/color_constant.dart';
import 'package:frontend/screens/intro/intro_1.dart';
import 'package:frontend/screens/intro/intro_2.dart';
import 'package:frontend/screens/intro/intro_3.dart';
import 'package:frontend/screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Fluttertoast.showToast(
        //     msg: "This is Center Short Toast",
        //     toastLength: Toast.LENGTH_SHORT,
        //     gravity: ToastGravity.CENTER,
        //     timeInSecForIosWeb: 1,
        //     backgroundColor: Colors.red,
        //     textColor: Colors.white,
        //     fontSize: 16.0);

        FocusScope.of(context).unfocus();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HomeCare',
        theme: ThemeData(fontFamily: 'Roboto', primaryColor: mPrimaryColor),
        home: Intro1(),
      ),
    );
  }
}
