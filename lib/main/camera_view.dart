import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:object_detection_flutter/recognizer-controller/scan_controller.dart';
import 'package:object_detection_flutter/main/navbar.dart';


// ignore: duplicate_import
import 'package:object_detection_flutter/main/navbar.dart';



class CameraView extends StatefulWidget {
  
  const CameraView({super.key});



  @override
  State<CameraView> createState() => _CameraViewState();
}

int myIndex = 0;
List<Widget> widgetList = const [
Text('Pinfo', style: TextStyle(fontSize: 30)),
Text('Helpurl', style: TextStyle(fontSize: 30)),
Text('Info', style: TextStyle(fontSize: 30)),

];
class _CameraViewState extends State<CameraView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: const Text("Recongizerhelper",
            style: TextStyle(
              color: Color.fromARGB(255, 243, 243, 243),
              fontWeight: FontWeight.w500,
            )),
        backgroundColor: Color.fromARGB(255, 231, 71, 71),
        centerTitle: true,

        actions: <Widget>[
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.book),
                onPressed: (){
               Navigator.pushNamed(context, '/elevator');
                },
              ),
              IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: (){
              if (Platform.isAndroid){
                SystemNavigator.pop();
              } else{
                exit(0);
              }
            },
          )
            ],
          )
        ],
      ),
      body: GetBuilder<ScanController>(
          init: ScanController(),
          builder: (controller) {
            return controller.isCameraInitialized.value
                ? Stack(
                    children: [
                      CameraPreview(controller.cameraController),
                      Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Color.fromARGB(255, 201, 1, 241), width: 4.0),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [        
                            SizedBox(
                              width: 600,
                              height: 00
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    color: Color.fromARGB(255, 180, 170, 170),
                                    child: Text(
                                      controller.label,
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: Text("Loading cam"),
                  );
          },
        ),
   bottomNavigationBar: BottomNavigationBar(
          //ignore showSelectedLabels: false
            showUnselectedLabels: false,
            backgroundColor: Colors.pink,
            type:BottomNavigationBarType.fixed,
            onTap: (index){
              setState(() {
                 myIndex =index;
              });  
                        // Conditionally navigate based on the selected index
          if (index == 0) {
            // Pinfo
            // You can replace this with the appropriate navigation logic
            Navigator.pushNamed(context, '/Pinfo');
          } else if (index == 1) {
            // Helpurl
            Navigator.pushNamed(context, '/Helpurl');
          } else if (index == 2) {
            // Info
           Navigator.pushNamed(context, '/Info');
          }
            },
            currentIndex: myIndex,
                    items: const [
                      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Pinfo',
                      backgroundColor: Colors.blue),
                      BottomNavigationBarItem(icon: Icon(Icons.mouse), label: 'Helpurl',
                       backgroundColor: Colors.deepOrange),
                      BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info',
                       backgroundColor: Colors.lightGreenAccent),
                    ],
                  ),

    );
  }
}


  
