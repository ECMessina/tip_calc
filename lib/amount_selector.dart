import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tip_calc/constants.dart';

class AmountSelector extends StatelessWidget {
  const AmountSelector({
    super.key,
    required this.label,
    required this.helper,
    required this.controller,
    required this.errorText,
  });

  final String label;
  final String helper;
  final TextEditingController? controller;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextFieldStyles.kNumberTextStyle,
      decoration: InputDecoration(
        focusedBorder: kGreenOutlineInputBorder,
        enabledBorder: kDkGreyOutlineInputBorder,
        labelStyle: TextFieldStyles.kLabelStyle,
        icon: kTextFieldMoneyIcon,
        labelText: label,
        helperText: helper,
        helperStyle: TextFieldStyles.kHelperStyle,
        errorText: errorText,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*\.?\d{0,2}'))
      ],
    );
  }
}
