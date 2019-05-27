import 'package:flutter/material.dart';
import 'Camera.dart' as camera;
import 'chats.dart' as chats;
import 'status.dart' as status;
import 'calls.dart' as calss;

void main() => runApp(new MaterialApp(
  debugShowCheckedModeBanner: false,
  home:WhatsAppHome()));


class WhatsAppHome extends StatefulWidget{
  @override
  WhatsAppHomeState createState()=>WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin {

  TabController controller;
  @override
  void initState(){
    super.initState();
    controller=new TabController(vsync: this,length: 4);

  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:new Text("WhatsApp",style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w600),),
        backgroundColor: Color.fromARGB(200, 19, 105, 70),
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(icon: new Icon(Icons.camera_alt),),
            new Tab(child: new Text("CHATS"),),
            new Tab(child: new Text("STATUS"),),
            new Tab(child: new Text("CALLS"),),

          ],),
         actions: <Widget>[
           Padding(
             padding: const EdgeInsets.only(right: 20.0) ,
             child: new Icon(Icons.search),),
           Padding(
             padding: const EdgeInsets.only(right: 16.0),
             child: new Icon(Icons.more_vert),)  
         ],
        ),
      body: new TabBarView(
          controller: controller,
          children: <Widget>[
                new camera.Camera(),
                new chats.Chats(),
                new status.Status(),
                new calss.Calls()
          ],
        )
        ,
    );
  }
}