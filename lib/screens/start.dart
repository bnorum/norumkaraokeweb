
import 'package:flutter/material.dart';
import 'dart:math';
import 'karaoke.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}
class StartPageState extends State<StartPage> {
  Song s = Song(title: "Test", artist: "Test", lyrics: "Test", songPath: "Test", imgPath: "Test");
  
  var lyrics = "";
  var son= "";
  var rng = new Random();
  

  Widget build(BuildContext context) {
    var code = rng.nextInt(999999); // Move the initialization here

    return Scaffold(
      appBar: AppBar(
        title: const Text("Norum Karaoke: Coda"),
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Code: " + code.toString(), // Use the local variable here
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Enter this code on your device",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () async { 
                CollectionReference _collectionRef = FirebaseFirestore.instance.collection("420420");
                QuerySnapshot querySnapshot = await _collectionRef.get();

                // Get data from docs and convert map to List
                final allData = querySnapshot.docs[0].data() as Map;
                setState(() {
                  Song f = Song(title: "Test", artist: "Test", lyrics: allData['lyric'], songPath: allData['sound'], imgPath: "Test");
                  s = f;
                });
                
              pushKaraoke(s);
                
              },
              child: const Text('Then Hit This, Baby'),
            ),
          ],
        ),
      ),
    ); 
  }
  void pushKaraoke(Song song) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Karaoke(song:song)
      )
    );

  }
}
