import 'package:flutter/material.dart';
import 'package:object_detection_flutter/main/camera_view.dart';
// ignore: unused_import
import 'package:object_detection_flutter/main/navbar.dart';


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
    );
  }
}






