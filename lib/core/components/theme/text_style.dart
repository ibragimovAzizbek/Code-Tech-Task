import 'package:flutter/material.dart';

TextStyle textstyle(
    {required Color color,
    required double size,
    FontWeight fontWeight = FontWeight.normal}) {
  return TextStyle(
    color: color,
    fontSize: size,
    fontWeight: fontWeight,
  );
}
