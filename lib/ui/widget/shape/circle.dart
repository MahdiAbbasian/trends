import 'package:flutter/material.dart';
import 'package:trends/constants.dart';

Widget circleContainer(width, height, child,label,context) {
  return Column(
    children: [
      Text('$label',style: const TextStyle(color: kFontYellowColor),),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      Container(
        decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
        height: height,
        width: width,
        child: child,
      ),
    ],
  );
}

Widget activityCircleContainer(width, height, child,label,context,myColor) {
  return Column(
    children: [
      Text('$label',style: const TextStyle(color: kFontYellowColor),),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      Container(
        decoration:  BoxDecoration(shape: BoxShape.circle, color: myColor),
        height: height,
        width: width,
        child: child,
      ),
    ],
  );
}

Widget exerciseCircleContainer(width, height, child,label,context,myColor) {
  return Column(
    children: [
      Text('$label',style: const TextStyle(color: kFontYellowColor),),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      Container(
        decoration:  BoxDecoration(shape: BoxShape.circle, color:myColor),
        height: height,
        width: width,
        child: child,
      ),
    ],
  );

}
Widget medicationCircleContainer(width, height, child,label,context,myColor) {
  return Column(
    children: [
      Text('$label',style: const TextStyle(color: kFontYellowColor),),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      Container(
        decoration:  BoxDecoration(shape: BoxShape.circle, color: myColor),
        height: height,
        width: width,
        child: child,
      ),
    ],
  );
}

Widget visualCircleContainer(width, height, child,label,context,myColor) {
  return Column(
    children: [
      Text('$label',style: const TextStyle(color: kFontYellowColor),),
      SizedBox(height: MediaQuery.of(context).size.height * 0.01),
      Container(
        decoration:  BoxDecoration(shape: BoxShape.circle, color: myColor),
        height: height,
        width: width,
        child: child,
      ),
    ],
  );
}

