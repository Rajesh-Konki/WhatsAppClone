//import 'dart:io';

import 'package:flutter/material.dart';

class Chats extends StatefulWidget{
    @override
    _ChatsState createState()=>_ChatsState();

}


class _ChatsState extends State<Chats>{
  @override
  Widget build(BuildContext context){
     return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: new Icon(Icons.chat),
        backgroundColor: Colors.green,
        onPressed: null,),
     );
  }
}