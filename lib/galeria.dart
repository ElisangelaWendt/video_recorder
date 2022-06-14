import 'package:flutter/material.dart';

class Galeria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Galeria')),
      body: lista(context),
    );
  }
}

Widget lista(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          //alterar para quantidade de videos contidas no BD
          return Center(
            child: Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Card tapped.');
                },
                child: const SizedBox(
                  width: 200,
                  height: 200,
                  child: Text('video'),
                ),
              ),
            ),
          );
        }),
      ),
    ),
  );
}
