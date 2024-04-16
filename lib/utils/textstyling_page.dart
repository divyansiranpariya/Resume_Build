import 'dart:ui';

import 'package:flutter/material.dart';

import 'color.dart';

class TextStyling {
  static TextStyle title = TextStyle(
    fontSize: 22,
    color: primaryWhite,
    fontWeight: FontWeight.bold,
  );
  static TextStyle subtitle = TextStyle(
    fontSize: 20,
    color: primaryWhite,
    fontWeight: FontWeight.bold,
  );
  static TextStyle primaryLabels =
      TextStyle(fontSize: 22, color: primaryBlack, fontWeight: FontWeight.w500);
  static TextStyle secondryLabels = TextStyle(
    fontSize: 18,
    color: secondaryGrey,
  );
  static TextStyle secondaryblack = TextStyle(
    fontSize: 20.5,
    color: primaryBlack,
    fontWeight: FontWeight.bold,
  );
  static TextStyle secondaryteal = TextStyle(
    fontSize: 20.5,
    color: primaryTeal.withOpacity(0.5),
    //fontWeight: FontWeight.bold,
  );
}
