//import 'dart:io';

import 'package:flutter/material.dart';

class Status extends StatefulWidget{
    @override
    _ChatsState createState()=>_ChatsState();

}


class _ChatsState extends State<Status>{
  @override
  Widget build(BuildContext context){
     return Scaffold(
       floatingActionButton: Column(
         mainAxisAlignment: MainAxisAlignment.end,
        
         children:<Widget>[
          FloatingActionButton(
            
            child: new Icon(Icons.edit,color: Color.fromARGB(200, 19, 105, 70),),
            backgroundColor: Colors.white,
            onPressed: null,
          ),
          FloatingActionButton(
            
         backgroundColor: Colors.green,
         child: new Icon(Icons.chat),
         onPressed: null,),

          
         ]
       ),
      
     );
  }
}