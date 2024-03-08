import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kSigDkGrey = Color.fromARGB(255, 51, 51, 51);
const Color kMainGreen = Colors.green;

class TextFieldStyles {
  static final TextStyle kNumberTextStyle = GoogleFonts.satisfy(
    fontSize: 25,
  );
  static final TextStyle kLabelStyle = GoogleFonts.sriracha(
    color: kSigDkGrey,
    fontSize: 20,
  );
  static final TextStyle kHelperStyle = GoogleFonts.sriracha(
    color: kSigDkGrey,
    fontSize: 13,
  );
}

const kTextFieldMoneyIcon = Icon(
  size: 35,
  Icons.attach_money,
  color: kMainGreen,
);

const kTextFieldPercentIcon = Icon(
  size: 30,
  Icons.percent,
  color: Colors.white,
);

const kDkGreyOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: kSigDkGrey,
    width: 2,
  ),
);

const kGreenOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: kMainGreen,
    width: 2,
  ),
);
