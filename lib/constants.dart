import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const int kDefaultPercentTip = 20;

class AppColors {
  static const Color dkGrey = Color.fromARGB(255, 51, 51, 51);
  static const Color backgroundColor = Color.fromARGB(255, 133, 127, 108);
  static const Color mainGreen = Colors.green;
}

class AppTextStyles {
  static final TextStyle appBarTextStyle = GoogleFonts.satisfy(
    fontSize: 30,
    color: Colors.white,
  );

  static final TextStyle buttonTextStyle = GoogleFonts.satisfy(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: AppColors.dkGrey,
  );

  static final TextStyle numberTextStyle = GoogleFonts.satisfy(fontSize: 25);

  static final TextStyle labelStyle = GoogleFonts.sriracha(
    color: AppColors.dkGrey,
    fontSize: 20,
  );

  static final TextStyle helperStyle = GoogleFonts.sriracha(
    color: AppColors.dkGrey,
    fontSize: 13,
  );
}

class AppIcons {
  static const signatureIcon = Icon(
    size: 40,
    Icons.receipt_long,
    color: AppColors.mainGreen,
  );

  static const textFieldMoneyIcon = Icon(
    size: 35,
    Icons.attach_money,
    color: AppColors.mainGreen,
  );

  static const textFieldPercentIcon = Icon(
    size: 30,
    Icons.percent,
    color: Colors.white,
  );
}

class Borders {
  static const dkGreyOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.dkGrey, width: 2),
  );

  static const greenOutlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.mainGreen, width: 2),
  );
}
