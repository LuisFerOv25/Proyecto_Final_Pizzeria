import 'package:flutter/material.dart';



class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  String nombre = "";
  String correo ='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(

          centerTitle: true ,
          title: Text('Iniciar sesión'),
        ),
        body: Stack(

        children: [

          _Fondo(context),
        ],

        )

       


      ),
    );
  }


Widget _Fondo(BuildContext context){

  final size= MediaQuery.of(context).size;

  final fondo = Container(

  height: size.height * 0.5,
  width: double.infinity,
  decoration: BoxDecoration(


    gradient: LinearGradient(

      colors: <Color> [

        Color.fromRGBO(63,63,156, 2.0),
        Color.fromRGBO(90, 70, 178, 2.0)

      ]
    )
  ),


  );

  final campos = ListView(
          
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 2),
          children: [

              Divider(),
             _inicio_sesion(),
              Divider(),
              _crearCorreo(),
              Divider(),
              _crearPassword()
          ],

        );


    return Stack(
      children: [

      fondo,
      campos,
    
      Container(
        padding: EdgeInsets.only(top: 80.0),
        child: Column(

          children: <Widget>[

            Icon(Icons.local_pizza, color: Colors.red, size: 100.0),
            SizedBox(height: 10.0,width: double.infinity,),
            Text('Pizzeria', style: TextStyle( color: Colors.white, fontSize: 25.0))


          ],

          ),

    ),
      ],
      
 
    );
    


}

Widget _inicio_sesion (){

    return TextField(

      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)

        ),
        counter: Text('letras ${nombre.length}'),
        hintText: 'Nombre de usuario',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre de usuario',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),

      ),

      onChanged: (valor) {
        setState(() {
          nombre = valor;
        });
        
      },
        

    );
    

}

Widget _crearCorreo(){

return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)

        ),
       
        hintText: 'Email',
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),

      ),
        
      onChanged: (valor) => setState(() {
        
          correo = valor;
        })
    );

}

Widget _crearPassword(){

return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)

        ),
       
        hintText: 'Contraseña',
        labelText: 'Contraseña',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock),

      ),
        
      onChanged: (valor) => setState(() {
        
          correo = valor;
        })
    );

}

}