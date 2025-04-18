import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tip_calc/screen.dart/start_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then((_) {
    runApp(
      const MaterialApp(debugShowCheckedModeBanner: false, home: StartScreen()),
    );
  });
}
