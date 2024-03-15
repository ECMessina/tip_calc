import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tip_calc/constants.dart';
import 'package:tip_calc/data_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: kSigDkGrey,
          leading: const Icon(
            size: 40,
            Icons.receipt_long,
            color: kMainGreen,
          ),
          title: Text(
            'Tip Calculator',
            style: GoogleFonts.satisfy(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 133, 127, 108),
        resizeToAvoidBottomInset: false,
        body: const DataScreen(),
      ),
    );
  }
}
