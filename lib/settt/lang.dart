import 'package:flutter/material.dart';

class Language extends StatefulWidget{
  @override 
  LanguagePageState createState()=>new LanguagePageState();
  }

class LanguagePageState extends State<Language>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Language'),
          backgroundColor: Color(0xffCAC9FB),
      ) 
    );
  }
}