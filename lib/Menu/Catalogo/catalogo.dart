import 'package:flutter/material.dart';
import 'package:proyecto_final_pizzeria/importaciones.dart';

class catalogo extends StatefulWidget {
  @override
  State<catalogo> createState() => _catalogoState();
}

class _catalogoState extends State<catalogo> {

  List<Productos> _productos = <Productos>[];
  List<Productos> _listacarro = <Productos>[];

@override
  void initState() {
    super.initState();
    _productosP();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          centerTitle: true,
          title: Text('RED PIZZA'),
          actions: [
            Padding(padding: 
            const EdgeInsets.only(right: 16.0,top: 8.0),
            child: GestureDetector(
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Icon(Icons.shopping_cart,
                size: 38,),
                if(_listacarro.length>0)
                Padding(padding: const EdgeInsets.only(left: 2.0),
                child: CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.red[900],
                  foregroundColor: Colors.white,
                  child: Text(
                    _listacarro.length.toString(),
                    style:  TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12.0
                    ),
                  ),
                  
                ),
                
                ),

              ],
              
            ),
            onTap: () {
              if(_listacarro.isNotEmpty)
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context)=> carro_compras(_listacarro),
              
              )
              );
            },
            ),
             
            ),
          ],
          
        ),
        body: cuadroProductos(),

      );
  }

  GridView cuadroProductos(){

    return GridView.builder(

      padding: const EdgeInsets.all(4.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: _productos.length,
      itemBuilder: (context,index){

       final String image = _productos[index].imagen;
       var item = _productos[index];
       return Card(

         elevation: 4.0,
         child: Stack(

           fit: StackFit.loose,
           alignment: Alignment.center,
           children: [
             Column(

               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Expanded(child: new Image.asset("assets/images/pizza-tocineta.png",
                 fit: BoxFit.contain,
                 
                 )
                 ),
                 Text(item.nombre,
                 textAlign: TextAlign.center,
                 style: TextStyle(

                   fontSize: 20.0
                 )
              
                 ),
                 SizedBox(
                   height: 15,
                 ),
                 Row(

                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   children: [
                     SizedBox(
                       height: 25),
                       Text(item.precio.toString(),style: TextStyle(

                         fontWeight: FontWeight.bold,
                         fontSize: 23.0,
                         color: Colors.black
                       ),
                       
                       ),
                       Padding(padding: const EdgeInsets.only(
                         right: 8.0,
                         bottom: 8.0,

                       ),
                       child: Align(alignment: Alignment.bottomRight,
                       child: GestureDetector(
                         child: (!_listacarro.contains(item))
                         ? Icon(Icons.shopping_cart,
                         color: Colors.blue,
                         size: 38,
                         ) :
                         Icon(Icons.shopping_cart,
                         color: Colors.red,
                         size: 38,
                         ) ,                        
                         onTap: () {
                          setState(() {
                            
                            if(!_listacarro.contains(item))
                            _listacarro.add(item);
                            else
                            _listacarro.remove(item);

                          }); 

                         },

                       )
                       )
                  )
                   ],
                 )
               ],
             )
           ],
         ),
       );
      }
    
    
    );
  }

void _productosP(){
  var list = <Productos>[
    Productos(
      'Pizza Hawai',
      'pizza-tocineta.png',
      Colors.black,
      2500,
      1
      
      ),
      Productos(
      'Pizza Italiana',
      'pizza-tocineta.png',
      Colors.black,
      3500,
      1
      
      ),
      Productos(
      'Pizza Colombiana',
      'pizza-tocineta.png',
      Colors.black,
      5500,
      1
      
      ),
      Productos(
      'Pizza',
      'pizza-tocineta.png',
      Colors.black,
      4500,
      1
      
      ),
      Productos(
      'Pizza Colombiana',
      'pizza-tocineta.png',
      Colors.black,
      5500,
      1
      
      ),
      Productos(
      'Pizza',
      'pizza-tocineta.png',
      Colors.black,
      4500,
      1
      
      ),
      Productos(
      'Pizza Colombiana',
      'pizza-tocineta.png',
      Colors.black,
      5500,
      1
      
      ),
      Productos(
      'Pizza',
      'pizza-tocineta.png',
      Colors.black,
      4500,
      1
      
      ),
      Productos(
      'Pizza Colombiana',
      'pizza-tocineta.png',
      Colors.black,
      5500,
      1
      
      ),
      Productos(
      'Pizza',
      'pizza-tocineta.png',
      Colors.black,
      4500,
      1
      
      ),
      Productos(
      'Pizza Colombiana',
      'pizza-tocineta.png',
      Colors.black,
      5500,
      1
      
      ),
      Productos(
      'Pizza',
      'pizza-tocineta.png',
      Colors.black,
      4500,
      1
      
      ),

  ];

  setState(() {
    _productos = list;
  });

}

}
