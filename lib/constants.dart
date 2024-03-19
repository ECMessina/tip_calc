import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const int kDefaultPercentTip = 20;

class SignatureColors {
  static const Color dkGrey = Color.fromARGB(255, 51, 51, 51);
  static const Color mainGreen = Colors.green;
}

class TextFieldStyles {
  static final TextStyle numberTextStyle = GoogleFonts.satisfy(
    fontSize: 25,
  );
  static final TextStyle labelStyle = GoogleFonts.sriracha(
    color: SignatureColors.dkGrey,
    fontSize: 20,
  );
  static final TextStyle helperStyle = GoogleFonts.sriracha(
    color: SignatureColors.dkGrey,
    fontSize: 13,
  );
}

class AppIcons {
  static const textFieldMoneyIcon = Icon(
    size: 35,
    Icons.attach_money,
    color: SignatureColors.mainGreen,
  );

  static const textFieldPercentIcon = Icon(
    size: 30,
    Icons.percent,
    color: Colors.white,
  );
}

class Borders {
  static const dkGreyOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: SignatureColors.dkGrey,
      width: 2,
    ),
  );

  static const greenOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(
      color: SignatureColors.mainGreen,
      width: 2,
    ),
  );
}
