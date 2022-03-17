import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Iniciar_sesion.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: Iniciarsesion.id,
     routes: {
       Iniciarsesion.id : (context) => Iniciarsesion(),

     },
     
    );
  }
}