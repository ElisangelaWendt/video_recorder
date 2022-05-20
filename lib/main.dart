import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:video_recorder/camera_page.dart';
import './galeria.dart';

void main() {
  runApp(MaterialApp(
    title: 'Video Recorder',
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
      body: Center(
        child: RaisedButton(
          color: Colors.cyan[800],
          child: Text('Galeria'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaRota()),
            );
          },
        ),
      ),
    );
  }
}
