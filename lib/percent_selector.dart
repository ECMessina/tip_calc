import 'package:flutter/material.dart';
import 'package:tip_calc/constants.dart';

class PercentSelector extends StatelessWidget {
  const PercentSelector({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextFieldStyles.kNumberTextStyle,
      decoration: InputDecoration(
        focusedBorder: kGreenOutlineInputBorder,
        enabledBorder: kDkGreyOutlineInputBorder,
        labelStyle: TextFieldStyles.kLabelStyle,
        icon: kTextFieldPercentIcon,
        labelText: label,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
    );
  }
}
