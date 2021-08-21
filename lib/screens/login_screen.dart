import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/constants/color_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                child: Text('Masukkan nomor telepon untuk masuk aplikasi',
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 23))),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                children: <Widget>[
                  TextField(
                    obscureText: false,
                    decoration: new InputDecoration(
                      border: new OutlineInputBorder(
                          borderSide: new BorderSide(color: mPrimaryColor)),
                      labelText: 'E-mail',
                      hintText: 'Masukkan e-mail anda',
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ])),
    ));
  }
}
