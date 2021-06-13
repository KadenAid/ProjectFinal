import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Timerr(),
  )
);
    String txt = "Start studying";
class Timerr extends StatefulWidget {
  @override
  _CountDownTimerState createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<Timerr> {
  double percent = 0;
  // ignore: non_constant_identifier_names
  static int TimeInMinut = 25;
  // ignore: non_constant_identifier_names
  int TimeInSec = TimeInMinut * 60;
  Timer timer;
  // ignore: non_constant_identifier_names
  void _StartTimer(){
    TimeInMinut = 25;
    // ignore: non_constant_identifier_names
    int Time = TimeInSec;
    // ignore: non_constant_identifier_names
    double SecPercent = (Time/100) ;
    print(SecPercent);
    timer = Timer.periodic(Duration(seconds: 1), (timer){
      setState(() {
        if(Time >0){
          Time--;
          if(Time % 60 == 0){
            TimeInMinut--;
          }
          if(Time% SecPercent == 0){
            if(percent <1){
              percent+=0.01;
            }else{
              percent = 1;
            }

          }
        }else{
          percent = 0;
          TimeInMinut = 25;
          timer.cancel();

        }
      });
    });
    // ignore: unnecessary_statements
    txt == "Pause";
  }
  
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title:new Text('Pomodoro Timer',style:TextStyle(color: Colors.white)),backgroundColor: Color(0xffB2B1F2),shadowColor: Colors.white,foregroundColor: Colors.white,),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xffB2B1F2)
          ),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: CircularPercentIndicator(
                  percent: percent,
                  animation: true,
                  lineWidth: 20.0,
                  circularStrokeCap: CircularStrokeCap.round,
                  reverse: false,
                  animateFromLastPercent: true,
                  radius: 250.0,
                  progressColor: Colors.white,
                  center: Text(
                    "$TimeInMinut",
                    style: TextStyle(
                      color: Colors.white,
                        fontSize: 80.0,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30.0,),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(30.0),topRight: Radius.circular(30.0))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child:  Column(
                                  children: <Widget>[
                                    Text(
                                      "Study Time",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text(
                                      "25",
                                      style: TextStyle(
                                        fontSize: 80.0
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child:  Column(
                                  children: <Widget>[
                                    Text(
                                      "Break Time",
                                      style: TextStyle(
                                        fontSize: 30.0,
                                      ),
                                    ),
                                    SizedBox(height: 10.0,),
                                    Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 80.0
                                      ),
                                    )
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 28.0),
                          // ignore: deprecated_member_use
                          child: RaisedButton(
                            color: Color(0xffB2B1F2),
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(txt, style: TextStyle(color:Colors.white,fontSize: 22.0),),
                            ),
                            onPressed: _StartTimer,

                          ),
                        ),
                      ],
                    ),
                  )
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}