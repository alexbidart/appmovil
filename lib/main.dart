// import 'package:componentes/splash_screen.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
// import 'package:componentes/src/pages/home_temp.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      // home: HomePage());
      initialRoute: 'Splash',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        // print('Ruta llamada: ${settings.name}');

        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
      // home: SplashScreen(),
    );
  }
}
