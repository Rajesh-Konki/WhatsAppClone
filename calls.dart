//import 'dart:io';

import 'package:flutter/material.dart';

class Calls extends StatefulWidget{
    @override
    _ChatsState createState()=>_ChatsState();

}


class _ChatsState extends State<Calls>{
  @override
  Widget build(BuildContext context){
     return Scaffold(
         floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.green,
         child: new Icon(Icons.call),
         onPressed: null,
         ),
     );
  }
}