import 'package:flutter/material.dart';
import 'screens/start.dart';
import 'theme.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui';
import 'ascii_builder.dart';
void main() { runApp(MyApp());}


final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();


class MyApp extends StatefulWidget {
  @override
  MyAppState createState() {
    return new MyAppState();

  }

}
class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
    ]);
    return MaterialApp( 
      navigatorKey: navigatorKey,
      theme: DarkGreenTheme.themeData, 
      title: 'Norum_Karaoke',
      home: StartPage(),
      debugShowCheckedModeBanner: false,
    );
  } //build
} //myapp class



