import 'package:backdrop_modal_route/backdrop_modal_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/constants/color_constant.dart';
import 'package:frontend/screens/otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController numberTextFieldController = TextEditingController();
  bool validateTextField = false;

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    numberTextFieldController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(right: 32, left: 32, top: 70, bottom: 30),
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: SvgPicture.asset('assets/icons/icon.svg'),
                ),
                SizedBox(height: 30),
                Container(
                  child: Text(
                    'Masukkan nomor WhatsApp anda untuk masuk aplikasi',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                SizedBox(height: 30),
                TextField(
                  controller: numberTextFieldController,
                  maxLength: 14,
                  onChanged: (text) {
                    setState(() {
                      validateTextField = false;
                    });
                  },
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  decoration: new InputDecoration(
                    labelStyle: TextStyle(
                      color: mPrimaryColor,
                    ),
                    errorText: validateTextField
                        ? 'Mohon isi Nomor WhatsApp anda'
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: mPrimaryColor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: mPrimaryColor,
                      ),
                    ),
                    // labelText: 'No WhatsApp',
                    hintText: 'Contoh: 08123456789',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Material(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: mPrimaryColor,
                      child: InkWell(
                        splashColor: Colors.teal[900],
                        onTap: () async {
                          if (numberTextFieldController.text.isEmpty) {
                            setState(() {
                              validateTextField = true;
                            });
                          } else {
                            String numberToSend =
                                numberTextFieldController.text;

                            // await _auth.verifyPhoneNumber(
                            //   phoneNumber: '+6282331147549',
                            //   verificationCompleted:
                            //       (phoneAuthCredential) async {
                            //     print('complete');
                            //   },
                            //   verificationFailed: (verification) async {
                            //     print('failed');
                            //   },
                            //   codeSent: (verficationId, resendingToken) async {
                            //     print('code sent');
                            //   },
                            //   codeAutoRetrievalTimeout: (verificationId) async {
                            //     print('timeout');
                            //   },
                            // );
                            Navigator.of(context).push(
                              CupertinoPageRoute(
                                builder: (context) => OtpScreen(),
                                settings: RouteSettings(
                                  arguments: numberToSend,
                                ),
                              ),
                            );
                          }
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          height: 44,
                          child: Text(
                            'Lanjut',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Material(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      // color: Colors.white,
                      child: InkWell(
                        splashColor: Colors.grey[200],
                        onTap: () {
                          openModalSyaratKetentuan(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          height: 44,
                          child: Text(
                            'Syarat & Ketentuan berlaku',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        // SizedBox(height: 40),
      ),
    );
  }

  void openModalSyaratKetentuan(BuildContext context) async {
    await Navigator.push(
      context,
      BackdropModalRoute<void>(
        overlayContentBuilder: (context) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Halaman Syarat Ketentuan'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        topPadding: 100.0,
        barrierColorVal: Colors.black45,
        backgroundColor: Colors.white,
        backdropShape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        barrierLabelVal: 'Customized Backdrop',
        shouldMaintainState: false,
        canBarrierDismiss: true,
      ),
    );
  }
}
