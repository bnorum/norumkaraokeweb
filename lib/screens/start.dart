
import 'package:flutter/material.dart';
import 'dart:math';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);
  @override
  StartPageState createState() => StartPageState();
}
class StartPageState extends State<StartPage> {

  int randomCode() {
    var rng = new Random();
    return rng.nextInt(999999);
  }
  Widget build(BuildContext context) {
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
              "Code: " + randomCode().toString(),
              style: TextStyle(fontSize: 40),
            ),
            Text(
              "Enter this code on your device",
              style: TextStyle(fontSize: 20),
            ),
            ElevatedButton(
              onPressed: () { },
              child: const Text('Then Hit This, Baby'),
            ),
          ],
        ),
      ),
    ); 

  }
}
