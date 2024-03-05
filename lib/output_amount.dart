import 'package:flutter/material.dart';

class OutputAmount extends StatelessWidget {
  const OutputAmount({
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
      decoration: InputDecoration(
        icon: const Icon(
          Icons.attach_money,
          color: Colors.green,
        ),
        labelText: label,
        helperText: helper,
      ),
      controller: controller,
    );
  }
}
