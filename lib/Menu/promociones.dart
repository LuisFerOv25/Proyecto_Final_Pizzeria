import 'package:flutter/material.dart';

class Promo extends StatefulWidget {
  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          centerTitle: true,
          title: Text('RED PIZZA'),
        ),
        body: Center(
          child: Container(
            child: Text('Estas en promociones'),
          ),
        ),
      ),
    );
  }
}