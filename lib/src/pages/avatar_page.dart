import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  // const AlertPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integrantes'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/LOGOUTEM.png'),
              radius: 20.0,
            ),
          ),
        ],
      ),
      // body: _lista(),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          // _cardTipo2(),
          // SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo3(),
          SizedBox(height: 30.0),
        ],
      ),
      // body: Center{
      // },
    );
  }

//Funcion que retorna una tarjeta con la información del primer estudiante
  Widget _cardTipo1() {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        children: <Widget>[
          //
          ListTile(
            // leading: Icon(Icons.photo_album, color: Colors.blue),
            leading: SizedBox(
              height: 100.0,
              width: 100.0, // fixed width and height
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Alexbidart.png'),
                radius: 25.0,
              ),
            ),
            title: Text('Alex Bidart Orellana'),
            subtitle: Text('18.698.203-7'),
          ),
        ],
      ),
    );
  }

//Funcion que retorna una tarjeta con la información del segundo estudiante
  Widget _cardTipo2() {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: SizedBox(
              height: 100.0,
              width: 100.0, // fixed width and height
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Nicolasjimenez.png'),
                radius: 25.0,
              ),
            ),
            title: Text('Nicolas Jimenez Jimenez'),
            subtitle: Text('18.609.795-5'),
          ),
        ],
      ),
    );
  }

//Funcion que retorna una tarjeta con la información del tercer estudiante
  Widget _cardTipo3() {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: SizedBox(
              height: 100.0,
              width: 100.0, // fixed width and height
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Edgarmatus.jpeg'),
                radius: 25.0,
              ),
            ),
            title: Text('Edgar Matus Soto'),
            subtitle: Text('19.027.334-2'),
          ),
        ],
      ),
    );
  }
}
