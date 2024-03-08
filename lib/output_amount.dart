import 'package:flutter/material.dart';
import 'package:tip_calc/constants.dart';

class OutputAmount extends StatelessWidget {
  const OutputAmount({
    super.key,
    required this.label,
    required this.helper,
    required this.controller,
  });

  final String label;
  final String helper;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextFieldStyles.kNumberTextStyle,
      decoration: InputDecoration(
        labelStyle: TextFieldStyles.kLabelStyle,
        focusedBorder: kGreenOutlineInputBorder,
        enabledBorder: kGreenOutlineInputBorder,
        icon: kTextFieldMoneyIcon,
        labelText: label,
        helperText: helper,
        helperStyle: TextFieldStyles.kHelperStyle,
      ),
      controller: controller,
      readOnly: true,
    );
  }
}
