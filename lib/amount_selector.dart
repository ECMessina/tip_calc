import 'package:flutter/material.dart';
import 'package:tip_calc/constants.dart';

class AmountSelector extends StatelessWidget {
  const AmountSelector({
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
        focusedBorder: kGreenOutlineInputBorder,
        enabledBorder: kDkGreyOutlineInputBorder,
        labelStyle: LabelStyle.kLabelStyle,
        icon: kTextFieldMoneyIcon,
        labelText: label,
        helperText: helper,
        helperStyle: HelperStyle.kHelperStyle,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
    );
  }
}
