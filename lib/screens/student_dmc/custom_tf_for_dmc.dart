import 'dart:core';
import 'package:flutter/material.dart';

class CustomTfForDmc extends StatelessWidget {

  final String hintText;
  final String labelText;
  final int maxDigit;
  var ranController = TextEditingController();

  CustomTfForDmc({
    super.key,
  required this.hintText,
  required this.labelText,
  required this.maxDigit,
  required this.ranController});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: ranController,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
