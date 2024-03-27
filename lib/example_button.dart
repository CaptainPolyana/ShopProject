import 'package:flutter/material.dart';
class ExampleButton extends StatelessWidget {
  final String text;
  const ExampleButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 20),);
  }
}