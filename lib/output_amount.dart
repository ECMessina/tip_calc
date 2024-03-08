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
      style: TextFieldStyle.kNumberTextStyle,
      decoration: InputDecoration(
        labelStyle: LabelStyle.kLabelStyle,
        focusedBorder: kGreenOutlineInputBorder,
        enabledBorder: kGreenOutlineInputBorder,
        icon: kTextFieldMoneyIcon,
        labelText: label,
        helperText: helper,
        helperStyle: HelperStyle.kHelperStyle,
      ),
      controller: controller,
      readOnly: true,
    );
  }
}
