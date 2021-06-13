import 'package:flutter/material.dart';

class Contact extends StatefulWidget{
  @override 
  CntePageState createState()=>new CntePageState();
  }

class CntePageState extends State<Contact>{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar:new AppBar(
      title:new Text('Contacts')
      ) 
    );
  }
}