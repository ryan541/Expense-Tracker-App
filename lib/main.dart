import 'package:flutter/material.dart';
import 'package:scheduler/widgets/expense.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: const Expenses(),
  ));
}
