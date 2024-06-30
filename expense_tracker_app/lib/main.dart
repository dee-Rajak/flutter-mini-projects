import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Expenses(), 
    ),
  );
}
