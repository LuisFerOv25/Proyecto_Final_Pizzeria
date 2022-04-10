// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Login/Iniciar_sesion.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
void initState() {
  TextEditingController nombrecontrolador = TextEditingController();
  TextEditingController apellidocontrolador = TextEditingController();
  TextEditingController correocontrolador = TextEditingController();
  TextEditingController concontrolador = TextEditingController();
  super.initState();
  
}

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
