import 'package:flutter/material.dart';

const kDarkBlueColor = Color(0XFF0f0e3d);
const kFontYellowColor = Color(0XFFd4a80b);
const kDarkGreenColor = Color(0XFF10e432);
const kLightGreenColor = Color(0XFF93e80a);
const kMyYellowColor = Color(0XFFeaee1f);
const kOrangeColor = Color(0XFFc85412);
const kRedColor = Color(0XFFa60505);
const kButtonColor = Color(0XFFd3a70b);

kNavigator(context, page) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page),
  );
}

kNavigatorBack(context) {
  Navigator.pop(
    context,
  );
}