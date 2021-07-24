import 'package:componentes/src/api/google_signin_api.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

class InputPage extends StatefulWidget {
  // const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesion'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          // _crearInput(),
          Divider(height: 150.0),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          TextButton(
            child: Text('Ingresar'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () => _iniciarsesion(context),
            // onPressed: signIn,
          ),
          // _crearPersona(),
        ],
      ),
    );
  }

  // Widget _crearInput() {
  //   return TextField(
  //     // autofocus: true,
  //     // textCapitalization: TextCapitalization.sentences,
  //     decoration: InputDecoration(
  //       border: OutlineInputBorder(
  //           // borderRadius: BorderRadius.circular(20.0),
  //           ),
  //       counter: Text('Letras ${_nombre.length}'),
  //       hintText: 'Nombre de la persona',
  //       labelText: 'Nombre',
  //       helperText: 'Solo es el nombre',
  //       suffixIcon: Icon(Icons.accessibility),
  //       icon: Icon(Icons.account_circle),
  //     ),
  //     onChanged: (valor) {
  //       setState(() {
  //         _nombre = valor;
  //       });
  //     },
  //   );
  // }

  // Widget _crearPersona() {
  //   return ListTile(
  //     title: Text('Nombre es: $_nombre'),
  //     subtitle: Text('Email: $_email'),
  //   );
  // }

  Widget _crearEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        // autofocus: true,
        // textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              // borderRadius: BorderRadius.circular(20.0),
              ),
          hintText: 'Email',
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email),
        ),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  Widget _crearPassword() {
    return TextField(
        obscureText: true,
        // autofocus: true,
        // textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              // borderRadius: BorderRadius.circular(20.0),
              ),
          hintText: 'Password',
          labelText: 'Password',
          suffixIcon: Icon(Icons.lock_open),
          icon: Icon(Icons.lock),
        ),
        onChanged: (valor) => setState(() {
              _email = valor;
            }));
  }

  _iniciarsesion(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }

  // Future signIn() async {
  //   await GoogleSignInApi.login();
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => HomePage(),
  //     ),
  //   );
  // Navigator.of(context).pushReplacement(MaterialPageRoute(
  //   builder: (context) => HomePage(),
  // ));
  // }
}
