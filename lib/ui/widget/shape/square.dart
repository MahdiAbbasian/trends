import 'package:flutter/material.dart';
import 'package:trends/constants.dart';

Widget squareContainer(width, height, IconData icon, label, context, page) {
  return Column(
    children: [
      Text(
        '$label',
        style: const TextStyle(color: kFontYellowColor),
      ),
      //SizedBox(height: MediaQuery.of(context).size.height * 0.1),

      Container(
        width: MediaQuery.of(context).size.width * 0.3,
        child: IconButton(
          onPressed: () {
            kNavigator(context, page);
          },
          icon: Icon(
            icon,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
    ],
  );
}

Widget squareContainer2(width, height, icon, label, context, page) {
  return Column(
    children: [
      Text(
        '$label',
        style: const TextStyle(color: kFontYellowColor),
      ),
      //SizedBox(height: MediaQuery.of(context).size.height * 0.1),

      Container(
        width: MediaQuery.of(context).size.width * 0.3,
        child: RawMaterialButton(
          onPressed: () {
            kNavigator(context, page);
          },
          child: Container(
              width: MediaQuery.of(context).size.width * 0.1,
              child: Image.asset('$icon')),
        ),
      ),
    ],
  );
}
