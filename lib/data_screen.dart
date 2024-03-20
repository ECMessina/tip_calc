import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tip_calc/calculate_button.dart';
import 'package:tip_calc/amount_selector.dart';
import 'package:tip_calc/constants.dart';
import 'package:tip_calc/output_amount.dart';
import 'package:tip_calc/percent_selector.dart';

class DataScreen extends StatefulWidget {
  const DataScreen({super.key});

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController valueController = TextEditingController();
  final TextEditingController totalController = TextEditingController();
  final TextEditingController tipPercentageController = TextEditingController(text: kDefaultPercentTip.toString());
  final TextEditingController tipValueController = TextEditingController();
  final TextEditingController totalValueController = TextEditingController();
  bool visible = false;

  void tipCalc() {
    FocusScope.of(context).unfocus();

    if (!formKey.currentState!.validate()) {
      setState(() {
        visible = false;
      });

      return;
    }
    setState(() {
      visible = true;
    });

    double valueCheck = double.parse(valueController.text);
    double totalCheck = double.parse(totalController.text);
    int tipPercentCheck = int.parse(tipPercentageController.text);

    double tipValue = valueCheck * tipPercentCheck / 100;
    double totalValue = totalCheck + tipValue;

    setState(() {
      valueController.text = valueCheck.toStringAsFixed(2);
      totalController.text = totalCheck.toStringAsFixed(2);
      tipValueController.text = tipValue.toStringAsFixed(2);
      totalValueController.text = totalValue.toStringAsFixed(2);
    });
  }

  @override
  void dispose() {
    valueController.dispose();
    totalController.dispose();
    tipPercentageController.dispose();
    tipValueController.dispose();
    totalValueController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AmountSelector(
              label: 'VALUE',
              helper: '(pre-tax, pre-coupon)',
              controller: valueController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the amount to tip on.';
                }
                return null;
              },
            ),
            AmountSelector(
              label: 'TOTAL',
              helper: '(prior to tip)',
              controller: totalController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the bill amount.';
                }
                return null;
              },
            ),
            PercentSelector(
              label: 'TIP',
              controller: tipPercentageController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter a tip percent.';
                }
                return null;
              },
            ),
            CalculateButton(
              onPressed: tipCalc,
            ),
            OutputAmount(
              label: 'TIP VALUE',
              helper: '(amount of tip from percent entered)',
              controller: tipValueController,
              visible: visible,
            ),
            OutputAmount(
              label: 'TOTAL VALUE',
              helper: '(final bill total)',
              controller: totalValueController,
              visible: visible,
            ),
          ],
        ),
      ),
    );
  }
}
