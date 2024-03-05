import 'package:flutter/material.dart';
import 'package:tip_calc/data_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 51, 51, 51),
          leading: const Icon(
            Icons.receipt_long,
            color: Colors.green,
          ),
          title: const Text(
            'Tip Calculator',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 129, 129, 129),
        body: const DataScreen(),
      ),
    );
  }
}
