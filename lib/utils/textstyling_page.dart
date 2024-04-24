import 'dart:ui';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart.' as pw;

import 'package:flutter/material.dart';

import 'color.dart';

class TextStyling {
  static TextStyle title = TextStyle(
    fontSize: 25,
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
  static TextStyle contentLabes =
      TextStyle(fontSize: 22, color: primaryTeal, fontWeight: FontWeight.w500);
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
  static TextStyle pagelabel = TextStyle(
    fontSize: 18,
    // color: primaryTeal.withOpacity(0.5),
    //fontWeight: FontWeight.bold,
  );

  static pw.TextStyle pdffont = pw.TextStyle(
    fontSize: 16,
    color: white,
    fontWeight: pw.FontWeight.bold,
  );
  static pw.TextStyle pdfsmallfont = pw.TextStyle(
    fontSize: 14,
    color: white,
    // fontWeight: FontWeight.bold,
  );
  static pw.TextStyle pdfsmallcontentfont = pw.TextStyle(
    fontSize: 16,
    color: white,
    // fontWeight: FontWeight.bold,
  );
  static pw.TextStyle pdftitlefont = pw.TextStyle(
    fontSize: 15,
    color: white,
    // fontWeight: FontWeight.bold,
  );
  static pw.TextStyle pdfblackfont = pw.TextStyle(
    fontSize: 17,
    color: black,
    fontWeight: pw.FontWeight.bold,
  );
  static pw.TextStyle pdfgreyfont = pw.TextStyle(
    fontSize: 14,
    color: grey,
  );
  static TextStyle pdffonts = TextStyle(
    fontSize: 16,
    color: primaryWhite,
    fontWeight: FontWeight.bold,
  );
  static TextStyle pdfsmallfonts = TextStyle(
    fontSize: 14,
    color: primaryWhite,
    // fontWeight: FontWeight.bold,
  );
  static TextStyle pdfsmallcontentfonts = TextStyle(
    fontSize: 16,
    color: primaryWhite,
    // fontWeight: FontWeight.bold,
  );
  static TextStyle pdftitlefonts = TextStyle(
    fontSize: 15,
    color: primaryWhite,
    // fontWeight: FontWeight.bold,
  );
  static TextStyle pdfblackfonts = TextStyle(
    fontSize: 17,
    color: primaryBlack,
    fontWeight: FontWeight.bold,
  );
  static TextStyle pdfgreyfonts = TextStyle(
    fontSize: 14,
    color: Colors.grey.shade500,
  );
}
