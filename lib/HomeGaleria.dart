import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:video_recorder/galeria.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;

class HomeGaleria extends StatefulWidget {
  @override
  _HomeGaleriaState createState() => _HomeGaleriaState();
}

class _HomeGaleriaState extends State<HomeGaleria> {

  List<String> videos = [];
  @override
  void initState() {
    super.initState();
    listFiles();
  }

  Future listFiles() async {
    firebase_storage.ListResult results =
        await firebase_storage.FirebaseStorage.instance.ref('files').listAll();
    results.items.forEach((firebase_storage.Reference ref) {
      print('Found file $ref');
      donwloadUrl(ref.name);
    });
  }

  Future donwloadUrl(String imgName) async {
    String donwloadUrl = await firebase_storage.FirebaseStorage.instance
        .ref('files/$imgName')
        .getDownloadURL();

    videos.add(donwloadUrl);
    print(videos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Galeria')),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              //We need swiper for every content
              Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Galeria(
                    src: videos[index],
                  );
                },
                itemCount: videos.length,
                scrollDirection: Axis.vertical,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Flutter Shorts',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.camera_alt),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
