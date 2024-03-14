import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tip_calc/constants.dart';

class PercentSelector extends StatelessWidget {
  const PercentSelector({
    super.key,
    required this.label,
    required this.controller,
    required this.errorText,
  });

  final String label;
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
        icon: kTextFieldPercentIcon,
        labelText: label,
        errorText: errorText,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d{0,1}')),
      ],
    );
  }
}
