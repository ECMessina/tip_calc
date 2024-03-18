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
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextFieldStyles.numberTextStyle,
      decoration: InputDecoration(
        labelStyle: TextFieldStyles.labelStyle,
        focusedBorder: Boarders.greenOutlineInputBorder,
        enabledBorder: Boarders.greenOutlineInputBorder,
        icon: AppIcons.textFieldMoneyIcon,
        labelText: label,
        helperText: helper,
        helperStyle: TextFieldStyles.helperStyle,
      ),
      controller: controller,
      readOnly: true,
    );
  }
}
