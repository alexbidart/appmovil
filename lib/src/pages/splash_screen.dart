import 'package:componentes/src/pages/input_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      Duration(milliseconds: 4000),
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => InputPage(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Spacer(),
            Center(
              child: FractionallySizedBox(
                // widthFactor: 0.6,
                child: Column(
                  children: <Widget>[
                    FadeInImage(
                      image: NetworkImage(
                          'https://upload.wikimedia.org/wikipedia/commons/4/43/Logo_UTEM.png'),
                      placeholder: AssetImage('assets/loading2.gif'),
                      fadeInDuration: Duration(milliseconds: 100),
                      height: 300.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                    ),
                  ],
                ),
              ),
            ),
            CircularProgressIndicator(),
            Text('Bienvenido/Welcome'),
            Spacer(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
