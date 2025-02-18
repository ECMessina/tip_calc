import 'package:flutter/material.dart';
import 'package:tip_calc/constants.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(
          const EdgeInsets.only(top: 10, bottom: 10, right: 125, left: 125),
        ),
        backgroundColor: WidgetStateProperty.all(AppColors.mainGreen),
      ),
      onPressed: onPressed,
      child: Text('Calculate', style: AppTextStyles.buttonTextStyle),
    );
  }
}
