import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/Iniciar_sesion.dart';


void main() => runApp(Pizzeria());

class Pizzeria extends StatefulWidget {

  @override
  State<Pizzeria> createState() => _PizzeriaState();
}

class _PizzeriaState extends State<Pizzeria> {
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