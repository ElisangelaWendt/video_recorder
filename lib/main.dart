import 'package:flutter/material.dart';
import 'package:video_recorder/camera_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:video_recorder/theme.dart';
import './galeria.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await Firebase.initializeApp(); //lembrar de descomentar

  runApp(MaterialApp(
    title: 'Video recorder',
    theme: tema,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Video Recorder')),
      backgroundColor: Colors.black,
      body: buttons(context),
    );
  }
}

Widget buttons(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: <Widget>[
      Positioned(
        top: 30.0,
        child: SizedBox(
          height: 60,
          width: 160,
          child: RaisedButton(
            color: Colors.cyan[800],
            shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0),
            ),
            child: const Text('Galeria', textScaleFactor: 1.5),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Galeria()),
              );
            },
          ),
        ),
      ),
      Positioned(
        bottom: 30.0,
        child: SizedBox(
          height: 100,
          width: 100,
          child: RaisedButton(
            color: Colors.cyan[800],
            shape: CircleBorder(),
            child: const Text('+', textScaleFactor: 1.5),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CameraPage()),
              );
            },
          ),
        ),
      )
    ],
  );
}
