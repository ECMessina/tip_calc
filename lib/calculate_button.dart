import 'package:flutter/material.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

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
      onPressed: () {},
      child: const Text(
        'Calculate',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
