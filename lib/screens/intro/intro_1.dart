import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:frontend/constants/color_constant.dart';
import 'package:frontend/screens/intro/intro_2.dart';

class Intro1 extends StatelessWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: GestureDetector(
          onPanUpdate: (details) {
            if (details.delta.dx < 0) {
              Navigator.of(context)
                  .push(CupertinoPageRoute(builder: (context) => Intro2()));
            }
          },
          child: Container(
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  child: Container(
                      padding: EdgeInsets.only(top: 120, left: 24, right: 24),
                      height: MediaQuery.of(context).size.height * 0.5,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: mPrimaryColor),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Periksa Tanpa Antri',
                              style: TextStyle(
                                fontSize: 32,
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 30),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: MediaQuery.of(context).size.width - 150,
                              child: Text(
                                'Buat janji dengan klinik terdekat untuk dapatkan nomor antrian secara instan',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(height: 80),
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    ClipOval(
                                      child: Material(
                                        color: Colors.white, // Button color
                                        child: SizedBox(
                                          width: 7,
                                          height: 7,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    ClipOval(
                                      child: Material(
                                        color: Colors.grey[400], // Button color
                                        child: SizedBox(
                                          width: 7,
                                          height: 7,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 3),
                                    ClipOval(
                                      child: Material(
                                        color: Colors.grey[400], // Button color
                                        child: SizedBox(
                                          width: 7,
                                          height: 7,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipOval(
                                  child: Material(
                                    color: Colors.white, // Button color
                                    child: InkWell(
                                      splashColor: Colors.grey, // Splash color
                                      onTap: () {
                                        Navigator.of(context).push(
                                            CupertinoPageRoute(
                                                builder: (context) =>
                                                    Intro2()));
                                      },
                                      child: SizedBox(
                                        width: 61,
                                        height: 61,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          color: mPrimaryColor,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    padding: EdgeInsets.only(top: 50, left: 24, right: 24),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                    ),
                    child: Column(children: [
                      Container(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Skip',
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      SizedBox(height: 100),
                      SvgPicture.asset('assets/illustrations/intro_1.svg')
                    ]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
