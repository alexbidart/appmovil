import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  // const AlertPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: TextButton(
          child: Text('Mostrar Alerta'),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: Colors.black12),
              ),
            ),
            // textColor: Colors.white,
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            // textStyle: MaterialStateProperty.(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          ),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Hola soy el Contenido de este cuadro de dialogo'),
              FlutterLogo(
                size: 100,
              )
            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ok'),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
