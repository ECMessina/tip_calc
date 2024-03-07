import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.only(
            right: 75,
            left: 75,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.green),
      ),
      onPressed: onPressed,
      child: const Text(
        'Calculate',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
