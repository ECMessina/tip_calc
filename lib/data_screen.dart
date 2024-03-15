import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  bool validate = false;
  String? valueErrorText;
  String? totalErrorText;
  String? tipPercentErrorText;

  @override
  void initState() {
    super.initState();
    valueController.addListener(() {
      var prev = valueErrorText;
      getValueErrorText();
      if (prev != valueErrorText) {
        setState(() {});
      }
    });
    totalController.addListener(() {
      var prev = totalErrorText;
      getTotalErrorText();
      if (prev != totalErrorText) {
        setState(() {});
      }
    });
    tipPercentageController.addListener(() {
      var prev = tipPercentErrorText;
      getPercentErrorText();
      if (prev != tipPercentErrorText) {
        setState(() {});
      }
    });
  }

  void getValueErrorText() {
    final valueText = valueController.text;

    if (valueText.isEmpty) {
      valueErrorText = 'Please enter the amount to tip on.';
    } else {
      valueErrorText = null;
    }
  }

  void getTotalErrorText() {
    final totalText = totalController.text;

    if (totalText.isEmpty) {
      totalErrorText = 'Please enter the bill amount.';
    } else {
      totalErrorText = null;
    }
  }

  void getPercentErrorText() {
    final tippercentText = tipPercentageController.text;

    if (tippercentText.isEmpty) {
      tipPercentErrorText = 'Please enter a tip percent.';
    } else {
      tipPercentErrorText = null;
    }
  }

  void tipCalc() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      validate = true;
    });
    double valueCheck = double.parse(valueController.text);
    double totalCheck = double.parse(totalController.text);
    int tipPercentCheck = int.parse(tipPercentageController.text);

    if (valueController.text.isEmpty || totalController.text.isEmpty || tipPercentageController.text.isEmpty) {
      setState(() {});
    }

    double tipValue = valueCheck * tipPercentCheck / 100;
    double totalValue = totalCheck + tipValue;

    setState(() {
      valueController.text = valueCheck.toStringAsFixed(2);
      totalController.text = totalCheck.toStringAsFixed(2);
      tipValueController.text = tipValue.toStringAsFixed(2);
      totalValueController.text = totalValue.toStringAsFixed(2);
    });

    FocusScope.of(context).unfocus();
  }

  @override
  void dispose() {
    super.dispose();
    valueController.removeListener(() {
      valueController.text;
    });
    totalController.removeListener(() {
      totalController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AmountSelector(
            label: 'VALUE',
            helper: '(pre-tax, pre-coupon)',
            controller: valueController,
            errorText: validate ? valueErrorText : null,
          ),
          AmountSelector(
            label: 'TOTAL',
            helper: '(prior to tip)',
            controller: totalController,
            errorText: validate ? totalErrorText : null,
          ),
          PercentSelector(
            label: 'TIP',
            controller: tipPercentageController,
            errorText: validate ? tipPercentErrorText : null,
          ),
          CalculateButton(
            onPressed: tipCalc,
          ),
          OutputAmount(
            label: 'TIP VALUE',
            helper: '(amount of tip from percent entered)',
            controller: tipValueController,
          ),
          OutputAmount(
            label: 'TOTAL VALUE',
            helper: '(final bill total)',
            controller: totalValueController,
          ),
        ],
      ),
    );
  }
}
