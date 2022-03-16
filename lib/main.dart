import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: login(),


      ),
    );
  }
}