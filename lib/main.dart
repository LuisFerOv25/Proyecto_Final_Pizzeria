// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Iniciar_sesion.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Iniciarsesion.id,
      routes: {
        Iniciarsesion.id: (context) => Iniciarsesion(),
      },
    );
  }
}
