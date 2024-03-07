import 'package:flutter/material.dart';
import 'package:tip_calc/calculate_button.dart';
import 'package:tip_calc/amount_selector.dart';
import 'package:tip_calc/output_amount.dart';
import 'package:tip_calc/percent_selector.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

int defaultPercentTip = 20;

class _DataScreenState extends State<DataScreen> {
  final TextEditingController valueController = TextEditingController();
  final TextEditingController totalController = TextEditingController();
  final TextEditingController tipPercentageController = TextEditingController(text: defaultPercentTip.toString());
  final TextEditingController tipValueController = TextEditingController();
  final TextEditingController totalValueController = TextEditingController();

  void tipCalc() {
    double valueCheck = double.tryParse(valueController.text) ?? 0;
    double totalCheck = double.tryParse(totalController.text) ?? 0;
    int tipPercentCheck = int.tryParse(tipPercentageController.text) ?? 0;

    double tipValue = valueCheck * tipPercentCheck / 100;
    double totalValue = totalCheck + tipValue;

    setState(() {
      tipValueController.text = tipValue.toString();
      totalValueController.text = totalValue.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          AmountSelector(
            label: 'Value',
            helper: '(pre-tax, pre-coupon)',
            controller: valueController,
          ),
          const SizedBox(
            height: 20,
          ),
          AmountSelector(
            label: 'Total',
            helper: '(prior to tip)',
            controller: totalController,
          ),
          const SizedBox(
            height: 20,
          ),
          PercentSelector(
            label: 'Tip',
            controller: tipPercentageController,
          ),
          const SizedBox(
            height: 20,
          ),
          CalculateButton(
            onPressed: tipCalc,
          ),
          const SizedBox(
            height: 20,
          ),
          OutputAmount(
            label: 'Tip Value',
            helper: '(amount of tip from percent entered)',
            controller: tipValueController,
          ),
          const SizedBox(
            height: 20,
          ),
          OutputAmount(
            label: 'Total Value',
            helper: '(final bill total)',
            controller: totalValueController,
          ),
        ],
      ),
    );
  }
}
