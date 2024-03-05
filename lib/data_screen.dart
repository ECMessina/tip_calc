import 'package:flutter/material.dart';
import 'package:tip_calc/calculate_button.dart';
import 'package:tip_calc/amount_selector.dart';
import 'package:tip_calc/output_amount.dart';
import 'package:tip_calc/percent_selector.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController valueController = TextEditingController(text: 15.toString());
    TextEditingController totalController = TextEditingController(text: 20.toString());
    int defaultTipPercentage = 20;
    TextEditingController tipPercentageController = TextEditingController(text: defaultTipPercentage.toString());
    double tipValue = 15 * defaultTipPercentage / 100;
    TextEditingController tipValueController = TextEditingController(text: tipValue.toString());
    double totalValue = 20 + tipValue;
    TextEditingController totalValueController = TextEditingController(text: totalValue.toString());

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
          const CalculateButton(),
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
