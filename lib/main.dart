import 'package:flutter/material.dart';
import 'screens/start.dart';
import 'theme.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:ui';
import 'ascii_builder.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
  
  }


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



