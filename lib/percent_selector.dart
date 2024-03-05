import 'package:flutter/material.dart';

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
      decoration: InputDecoration(
        icon: const Icon(
          Icons.percent,
          color: Colors.white,
        ),
        labelText: label,
      ),
      controller: controller,
      keyboardType: TextInputType.number,
    );
  }
}
