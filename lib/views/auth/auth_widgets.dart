import 'package:flutter/material.dart';
import 'package:vroom/constants/colors.dart';

Widget signInPlatform(IconData? iconn) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: black,
        ),
        child: Center(
            child: Icon(
          iconn,
          color: Colors.white,
          size: 30,
        )),
      ),
    ),
  );
}
