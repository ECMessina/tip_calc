import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color sigDkGrey = Color.fromARGB(255, 51, 51, 51);
const Color mainGreen = Colors.green;

class TextFieldStyle {
  static final TextStyle kNumberTextStyle = GoogleFonts.satisfy(
    fontSize: 25,
  );
}

class LabelStyle {
  static final TextStyle kLabelStyle = GoogleFonts.sriracha(
    color: sigDkGrey,
    fontSize: 20,
  );
}

class HelperStyle {
  static final TextStyle kHelperStyle = GoogleFonts.sriracha(
    color: sigDkGrey,
    fontSize: 13,
  );
}

const kTextFieldMoneyIcon = Icon(
  size: 35,
  Icons.attach_money,
  color: mainGreen,
);

const kTextFieldPercentIcon = Icon(
  size: 30,
  Icons.percent,
  color: Colors.white,
);

const kDkGreyOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: sigDkGrey,
    width: 2,
  ),
);

const kGreenOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: mainGreen,
    width: 2,
  ),
);
