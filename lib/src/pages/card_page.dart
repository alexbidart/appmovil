import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  // const CardPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          // _cardTipo2(),
          // SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Sismo 1'),
            subtitle: Text('este es el sismo numero 1 que tiene este programa'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text('Ok'),
                onPressed: () {},
              )
            ],
          ),
        ],
      ),
    );
  }

  // Widget _cardTipo2() {
  //   final card = Container(
  //     // clipBehavior: Clip.antiAlias,
  //     child: Column(
  //       children: <Widget>[
  //         FadeInImage(
  //           image: NetworkImage(
  //               'https://upload.wikimedia.org/wikipedia/commons/4/43/Logo_UTEM.png'),
  //           placeholder: AssetImage('assets/loading2.gif'),
  //           fadeInDuration: Duration(milliseconds: 1000),
  //           height: 300.0,
  //           fit: BoxFit.cover,
  //         ),
  //         // Image(
  //         //   image: NetworkImage(
  //         //       'https://upload.wikimedia.org/wikipedia/commons/4/43/Logo_UTEM.png'),
  //         // ),
  //         Container(
  //           padding: EdgeInsets.all(10.0),
  //           child: Text('No tengo idea de que poner'),
  //         ),
  //       ],
  //     ),
  //   );

  //   return Container(
  //     decoration: BoxDecoration(
  //       borderRadius: BorderRadius.circular(30.0),
  //       boxShadow: <BoxShadow>[
  //         BoxShadow(
  //             color: Colors.black26,
  //             blurRadius: 10.0,
  //             spreadRadius: 2.0,
  //             offset: Offset(2.0, -2.0)),
  //       ],
  //       color: Colors.white,
  //     ),
  //     child: ClipRRect(
  //       borderRadius: BorderRadius.circular(30.0),
  //       child: card,
  //     ),
  //   );
  // }
}
