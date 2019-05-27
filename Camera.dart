//import 'dart:io';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class Camera extends StatefulWidget{
    @override
    _ChatsState createState()=>_ChatsState();

}


class _ChatsState extends State<Camera>{
  List<CameraDescription> cameras;
  CameraController controller;
  bool isReady=false;
  @override
  void initState(){
    setupcameras();
    return super.initState();
  }

  Future<void> setupcameras() async {
    try{
     cameras=await availableCameras();
     controller=new CameraController(cameras[0],ResolutionPreset.medium);
     await controller.initialize();
    }on CameraException catch(_){
      setState(() {
       isReady=false; 
      });
    }
    setState(() {
     isReady=true; 
    });
  }
  @override
  Widget build(BuildContext context){
    if(!isReady && !controller.value.isInitialized){
      return Container();
    }
     return AspectRatio(
       aspectRatio: controller.value.aspectRatio,
       child: CameraPreview(controller),
     );
  }
}