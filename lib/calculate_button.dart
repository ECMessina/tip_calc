import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tip_calc/constants.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.only(
            right: 150,
            left: 150,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(kMainGreen),
      ),
      onPressed: onPressed,
      child: Text(
        'Calculate',
        style: GoogleFonts.satisfy(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: kSigDkGrey,
        ),
      ),
    );
  }
}
