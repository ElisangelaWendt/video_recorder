import 'package:flutter/material.dart';
import './galeria.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navegação Básica',
    theme: ThemeData(primarySwatch: Colors.blue),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text('Video Recorder')),
      backgroundColor: Colors.black,
      body: incluiStack(context),
    );
  }
}

Widget incluiStack(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Positioned(
        top: 30.0,
        child: RaisedButton(
          color: Colors.cyan[800],
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(5.0),
          ),
          child: Text('Galeria'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Galeria()),
            );
          },
        ),
      ),
      Positioned(
        bottom: 30.0,
        child: RaisedButton(
          color: Colors.cyan[800],
          shape: CircleBorder(),
          child: Text('+'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Galeria()),
            );
          },
        ),
      )
    ],
  );
}
