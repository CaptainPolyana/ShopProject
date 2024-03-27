import 'package:flutter/material.dart';
import 'package:flutter_grid_view/autorization_page.dart';
import 'package:flutter_grid_view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: AutorizationPage(),
    );
  }
}


