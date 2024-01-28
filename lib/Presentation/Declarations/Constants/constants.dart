import 'package:flutter/material.dart';

Color primaryColor = const Color.fromARGB(255, 202, 157, 66);
Color appbarColor = const Color.fromARGB(255, 42, 42, 42);
Color secondaryColor = const Color.fromARGB(255, 232, 231, 231);
Color accentColor = const Color.fromARGB(255, 244, 241, 243);

double kSpacing = 20.00;
double kfontSize = 18.00;
double kLargefontSize = 25.00;

BorderRadius kBorderRadius = BorderRadius.circular(kSpacing);

EdgeInsets kPadding = EdgeInsets.all(kSpacing);
EdgeInsets kHPadding = EdgeInsets.symmetric(horizontal: kSpacing);
EdgeInsets kVPadding = EdgeInsets.symmetric(vertical: kSpacing);

getBtnStyle(context) => ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: kBorderRadius),
    backgroundColor: primaryColor,
    fixedSize: Size(MediaQuery.of(context).size.width, 47),
    textStyle: const TextStyle(fontWeight: FontWeight.bold));
var btnTextStyle = TextStyle(fontSize: kfontSize);

// Colors
const kBackgroundColor = Color(0xff191720);
const kTextFieldFill = Color(0xff1E1C24);
// TextStyles
const kHeadline = TextStyle(
  color: Colors.white,
  fontSize: 34,
  fontWeight: FontWeight.bold,
);

const kBodyText = TextStyle(
  color: Colors.grey,
  fontSize: 15,
);

const kButtonText = TextStyle(
  color: Colors.black87,
  fontSize: 16,
  fontWeight: FontWeight.bold,
);

const kBodyText2 =
    TextStyle(fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white);
