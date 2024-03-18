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
            top: 10,
            bottom: 10,
            right: 125,
            left: 125,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(SignatureColors.mainGreen),
      ),
      onPressed: onPressed,
      child: Text(
        'Calculate',
        style: GoogleFonts.satisfy(
          fontSize: 23,
          fontWeight: FontWeight.bold,
          color: SignatureColors.dkGrey,
        ),
      ),
    );
  }
}
