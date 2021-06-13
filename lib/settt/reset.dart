import 'package:flutter/material.dart';

class Reset extends StatefulWidget{
  @override 
  ResetPageState createState()=>new ResetPageState();
  }

class ResetPageState extends State<Reset>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Change Passowrd'),
          backgroundColor: Color(0xffCAC9FB),
      ) 
    );
  }
}