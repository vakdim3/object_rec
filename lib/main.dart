import 'package:flutter/material.dart';
import 'package:object_detection_flutter/buttonbar/help-url.dart';
import 'package:object_detection_flutter/buttonbar/info.dart';
import 'package:object_detection_flutter/buttonbar/pinfo.dart';
import 'package:object_detection_flutter/drawer_slides/Fav.dart';
import 'package:object_detection_flutter/drawer_slides/Report%20bugs.dart';
import 'package:object_detection_flutter/drawer_slides/Request%20new%20functions.dart';
import 'package:object_detection_flutter/drawer_slides/Settings.dart';
import 'package:object_detection_flutter/main/camera_view.dart';
// ignore: unused_import
import 'package:object_detection_flutter/main/navbar.dart';
import 'package:object_detection_flutter/main/Elevator.dart';

import 'package:flutter_translate/flutter_translate.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Start',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        
      ),
      
      home: const CameraView(),


      routes: {
        '/helpurl' :(context) =>  Helpurl (),
        '/Info' :(context) =>  Info (),
        '/Pinfo' :(context) =>  Pinfo (),
        '/elevator' :(context) =>  TranslationPage (),
        '/Fav' :(context) =>  FavoritesPage (),
        '/Report' :(context) =>  BugReportPage (),
        '/Request' :(context) =>  FeatureRequestPage (),
        '/Settings' :(context) =>  SettingsPage (),


      },
    );
  }
}






