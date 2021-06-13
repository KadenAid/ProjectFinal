
import 'package:application/menu/settings.dart';
import 'package:flutter/material.dart';
import 'package:application/home_page/detail_page.dart';
import 'package:velocity_x/velocity_x.dart';
import '../menu/account.dart';
import '../menu/dolist.dart';
import '../menu/expense.dart';
import '../menu/goal.dart';
import '../menu/lofi.dart';
import '../menu/schedule.dart';
import '../menu/timer.dart';
import 'constants.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'data.dart';

class Homeage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homeage> {
 @override
  Widget build(BuildContext context) {
    
        
    return Scaffold(
      backgroundColor: Color(0xFF6751B5),
      appBar: AppBar(
          title: "Space Explorers".text.xl4.bold.white.make().shimmer(
                  primaryColor: Vx.purple500, secondaryColor: Colors.white),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              centerTitle: true,
          
        ),

        endDrawer: new Drawer(
            child: Padding(
                padding: EdgeInsets.only(top: 40, left: 50, right: 50),
                child: ListView(
                  children: <Widget>[
                    new ListTile(
                        title: new Text('To Do List'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new DoList()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Schedule'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Schedule()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Timer'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Timerr()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Expense Tracker'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Expense()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Goal Tracker'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Goal()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text('Lofi Stream'),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Lofi()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                    new ListTile(
                        title: new Text(
                          'Account',
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Account()));
                        }),
                    Divider(
                        color: Color(0xffB2B1F2),
                        //indent:50,
                        //endIndent:50,
                        thickness: 2,
                        height: 30),
                 
                
                 new ListTile(
                        title: new Text(
                          'Settings',
                          style: TextStyle(color: Colors.red),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Settings()
                                      )
                                      ); })],
  
                  )
                  )
                  ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [gradientStartColor, gradientEndColor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7])),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left:80,right: 40,top: 40 ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Beneficial Сards',
                      style: TextStyle(
                        fontFamily: 'Avenir',
                        fontSize: 30,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w900,
                      ),
                      //textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                padding: const EdgeInsets.only(left: 32,right: 32),
                child: Swiper(
                  itemCount: motivation.length,
                  itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                  layout: SwiperLayout.STACK,
                  pagination: SwiperPagination(
                    builder:
                        DotSwiperPaginationBuilder(activeSize: 20, space: 8),
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (context, a, b) => DetailPage(
                              info: motivation[index],
                            ),
                          ),
                        );
                      },
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              SizedBox(height: 100),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.only(left:32.0,right:32.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(height: 100),
                                      Text(
                                        motivation[index].name,
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 44,
                                          color: const Color(0xff47455f),
                                          fontWeight: FontWeight.w900,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text(
                                        'Life Hacks',
                                        style: TextStyle(
                                          fontFamily: 'Avenir',
                                          fontSize: 23,
                                          color: primaryTextColor,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(height: 32),
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Know more',
                                            style: TextStyle(
                                              fontFamily: 'Avenir',
                                              fontSize: 18,
                                              color: secondaryTextColor,
                                              fontWeight: FontWeight.w500,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: secondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}


