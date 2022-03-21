import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<String> _locations = ['A', 'B', 'C', 'D'];
  //String _selectedLocation;
  Color _color = Color.fromARGB(0xFF, 0x42, 0xA5, 0xF5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: _color,
        appBar: AppBar(
          centerTitle: true,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
          title: Text('MENÚ'),
        ),
        body: SingleChildScrollView(
          child: new Column(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                opcion1(),
                opcion2(),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image(
                  height: 250,
                  fit: BoxFit.fitWidth,
                  filterQuality: FilterQuality.high,
                  image: NetworkImage(
                      'https://www.saborusa.com/wp-content/uploads/2019/12/origen-de-la-pizza-1.jpg')),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text('GRACIAS POR ELEGIRNOS'),
                    ),
                  ),
                ]),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _botonpedido(),
                _botonpedido1(),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _botonpedido2(),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _catalogo(),
              ],
            ),
          ]),
        ));
  }

  Widget _botonpedido() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.20, vertical: 40.0),
            child: Text('ENTREGA A DOMICILIO'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 200.60,
          color: Colors.red,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          });
    });
  }

  Widget _botonpedido1() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.20, vertical: 40.0),
            child: Text('RECOGER EN TIENDA'),
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 10.10,
          color: Colors.red,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          });
    });
  }

  Widget _botonpedido2() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.1, vertical: 20.0),
            child: Text('ELIJE ESPECIALIDAD'),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          elevation: 1.10,
          color: Colors.white30,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          });
    });
  }

  Widget opcion1() {
    return DropdownButton(
      hint: Text('Recomendados'),
      //value: _selectedLocation,
      onChanged: (newValue) {
        setState(() {
         // _selectedLocation = newValue;
        });
      },
      items: _locations.map((_locations) {
        return DropdownMenuItem(
          child: new Text(_locations),
          value: _locations,
        );
      }).toList(),
    );
  }

  Widget opcion2() {
    return DropdownButton(
      hint: Text('Categorias'),
      //value: _selectedLocation,
      style: const TextStyle(color: Colors.redAccent),
      onChanged: (newValue) {
        setState(() {
         // _selectedLocation = newValue;
        });
      },
      items: _locations.map((_locations) {
        return DropdownMenuItem(
          child: new Text(_locations),
          value: _locations,
        );
      }).toList(),
    );
  }

  Widget _catalogo() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.1, vertical: 20.0),
            child: Text('CATALOGO'),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          elevation: 1.10,
          color: Colors.white30,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Menu()));
          });
    });
  }
}
