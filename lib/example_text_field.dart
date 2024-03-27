import 'package:flutter/material.dart';
class ExampleTextField extends StatelessWidget {
  final String HintText;
  final int MAXLength;
  const ExampleTextField({Key? key, required this.HintText, required this.MAXLength}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: HintText
      ),
      maxLength: MAXLength,
    );
  }
}