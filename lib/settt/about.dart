import 'package:flutter/material.dart';

class About extends StatefulWidget{
  @override 
  AbPageState createState()=>new AbPageState();
  }

class AbPageState extends State<About>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('About Us'),
          backgroundColor: Color(0xffCAC9FB),
      ) 
    );
  }
}