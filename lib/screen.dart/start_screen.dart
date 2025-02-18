import 'package:flutter/material.dart';
import 'package:tip_calc/constants.dart';
import 'package:tip_calc/screen.dart/data_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.dkGrey,
        leading: AppIcons.signatureIcon,
        title: Text('Tip Calculator', style: AppTextStyles.appBarTextStyle),
      ),
      backgroundColor: AppColors.backgroundColor,
      resizeToAvoidBottomInset: false,
      body: const DataScreen(),
    );
  }
}
