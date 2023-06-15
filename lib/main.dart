import 'package:flutter/material.dart';
import 'card_demo.dart';
import 'checkbox.dart';
import 'dropdown_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: checkbox(),
    );
  }
}
