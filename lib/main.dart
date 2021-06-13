/*
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'blocks/auth.dart';
import 'screens/login.dart';
Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Provider<AuthBloc>(
      create: (context) => AuthBloc(),
      child:MaterialApp(
        title: 'SPACE EXPLORERS',
        theme: ThemeData(
          primaryColor: Color(0xffCAC9FB),
          visualDensity: VisualDensity.adaptivePlatformDensity,

        ),
        home: LoginScreen(),
      ),
    );
      }
   
  }*/

import 'package:application/prov/goalprov.dart';
import 'package:application/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'blocks/auth.dart';
import 'prov/provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider (
    
    create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);
          
      return InheritedProvider<TodosProvider>(create:(context) => TodosProvider(),
      builder: (context, _) {
    return Consumer<ThemeProvider>(
      builder: (context, value, child) {
        return Provider<AuthBloc>(
      create: (context) => AuthBloc(),
      
      child: MaterialApp(
        title: 'SPACE EXPLORERS',
        themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
        home: LoginScreen(),
      ),
        );
  }
    );
        }
      );
  
        }  
  );     
}


