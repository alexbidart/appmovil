import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  // const AlertPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/Alexbidart.png'),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
            ),
          ),
        ],
      ),
    );
  }
}
