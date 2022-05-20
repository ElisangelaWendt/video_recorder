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
        title: Text('Video Recorder'),
      ),
      backgroundColor: Colors.black,
      body: Align(
        child: Column(
          children: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.cyan[800],
              ),
              child: Text(
                'Galeria',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Galeria()),
                );
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                alignment: Alignment(0.0, 1.0),
                backgroundColor: Colors.cyan[800],
              ),
              child: Text(
                '+',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Galeria()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
