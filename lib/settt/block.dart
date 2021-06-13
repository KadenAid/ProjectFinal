import 'package:flutter/material.dart';

class Block extends StatefulWidget{
  @override 
  BlPageState createState()=>new BlPageState();
  }

class BlPageState extends State<Block>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Blocker App'),
          backgroundColor: Color(0xffCAC9FB),
      ) 
    );
  }
}