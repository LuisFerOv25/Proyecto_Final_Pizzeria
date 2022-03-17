import 'package:flutter/material.dart';

class Iniciarsesion extends StatefulWidget {
  static String id = 'Iniciarsesion';
  @override
  State<Iniciarsesion> createState() => _IniciarsesionState();
}

class _IniciarsesionState extends State<Iniciarsesion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Iniciar sesion'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                
               Icon(Icons.local_pizza, color: Colors.red, size: 100.0),
                SizedBox(
                  height: 20.0,
                  width: double.infinity,

                ),
               
              Text('Pizzeria',
                  style: TextStyle(color: Colors.white, fontSize: 25.0)),
              SizedBox(
                height: 10.0,
              ),
              _campousuario(),
              SizedBox(
                height: 10.0,
              ),
              _campopassword(),
              SizedBox(
                height: 15.0,
              ),
              _botoningresar(),
            ],
            
          ),
        ),
      
      ),
    );

  }

  Widget _campousuario() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
              hintText: 'Email',
              labelText: 'Correo electronico',
              suffixIcon: Icon(Icons.alternate_email),
              icon: Icon(Icons.email),
            ),
            onChanged: (valor) => setState(() {
                  //correo = valor;
                })),
      );
    });
  }

  Widget _campopassword() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                hintText: 'Password',
                labelText: 'Contraseña',
                suffixIcon: Icon(Icons.password),
                icon: Icon(Icons.lock),
              ),
              onChanged: (valor) => setState(() {
                    // correo = valor;
                  })));
    });
  }

  Widget _botoningresar() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
            child: Text('Iniciar Sesion'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10.0,
          color: Colors.red,
          onPressed: () {});
    });
  }
}
