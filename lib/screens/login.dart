import 'dart:async';
import 'package:application/blocks/auth.dart';
import 'package:application/home_page/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  StreamSubscription<User> loginStateSubscription;

  @override
  void initState() {
    var authBloc = Provider.of<AuthBloc>(context, listen: false);
    loginStateSubscription = authBloc.currentUser.listen((fbUser) {
      if (fbUser != null) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => Homeage(),
          ),
        );
      }
    });
    super.initState();
  }

    @override
    void dispose() {
      loginStateSubscription.cancel();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    final authBloc = Provider.of<AuthBloc>(context);
    return Scaffold(
      
        body: Center(
          
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Title(color:  Color(0xff8A2BE2), child: new Text('Welcome Back',style: TextStyle(fontSize: 50,
          fontFamily:'Lora ',color: Color(0xff8A2BE2),),),
          ),
          Title(color:  Color(0xff8A2BE2), child: new Text('Hi! Spend your day productively.  ',style: TextStyle(fontSize: 20,
          fontFamily:'Lora ',color: Colors.black,),),
          ),
          ImageIcon(
              AssetImage("assets/native.png"),
              size: 400,
              color: Color(0xffB2B1F2),
              
),
          SignInButton(
            Buttons.Google,
            onPressed: () => authBloc.loginGoogle(),
             padding: EdgeInsets.symmetric(horizontal: 40),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    ));
  }
}