import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tip_calc/constants.dart';

class AmountSelector extends StatelessWidget {
  const AmountSelector({
    super.key,
    required this.label,
    required this.helper,
    required this.controller,
    required this.validator,
  });

  final String label;
  final String helper;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      style: AppTextStyles.numberTextStyle,
      decoration: InputDecoration(
        focusedBorder: Borders.greenOutlineInputBorder,
        enabledBorder: Borders.dkGreyOutlineInputBorder,
        labelStyle: AppTextStyles.labelStyle,
        icon: AppIcons.textFieldMoneyIcon,
        labelText: label,
        helperText: helper,
        helperStyle: AppTextStyles.helperStyle,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'^[1-9]\d*\.?\d{0,2}')),
      ],
    );
  }
}
