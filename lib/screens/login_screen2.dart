import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/constants/color_constant.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({Key? key}) : super(key: key);

  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(children: <Widget>[
            Container(
              child: SvgPicture.asset('assets/icons/icon.svg'),
              margin: const EdgeInsets.only(top: 100.0),
            ),
            Container(margin: const EdgeInsets.only(top: 25, bottom: 25)),
            Container(
                child: Text('Konsultasi tanpa antri',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23))),
            Container(
                child: Text('Gabung Sekarang',
                    style: TextStyle(fontSize: 17, color: Colors.grey[700]))),
            SizedBox(height: 20),
            SignInButton(
              Buttons.GoogleDark,
              onPressed: () {},
            ),
            SizedBox(height: 20),
            Container(
                child: Text('Atau masuk menggunakan e-mail',
                    style: TextStyle(fontSize: 14))),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: <Widget>[
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
          ])),
    ));
  }
}
