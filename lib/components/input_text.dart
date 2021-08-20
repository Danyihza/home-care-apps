import 'package:flutter/material.dart';
import 'package:frontend/constants/color_constant.dart';

class TextInputPrimary extends StatelessWidget {
  const TextInputPrimary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      labelText: "Username",
      border: myinputborder(),
      enabledBorder: myinputborder(),
      focusedBorder: myfocusborder(),
    ));
  }

  OutlineInputBorder myinputborder() {
    //return type is OutlineInputBorder
    return OutlineInputBorder(
        //Outline border type for TextFeild
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.redAccent,
          width: 3,
        ));
  }

  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: mPrimaryColor,
          width: 3,
        ));
  }
}
