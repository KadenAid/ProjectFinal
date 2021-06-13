import 'package:application/settt/about.dart';
import 'package:application/settt/block.dart';
import 'package:application/settt/contc.dart';
import 'package:application/settt/lang.dart';
import 'package:application/settt/reset.dart';
import 'package:application/switch/change.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../prov/provider.dart';

class Settings extends StatefulWidget{
  @override 
  TimerPageState createState()=>new TimerPageState();
  }

class TimerPageState extends State<Settings>{
  @override
  Widget build(BuildContext context) {
    
    // ignore: unused_local_variable
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
         actions: [
          ChangeThemeButtonWidget(),
        ],
         elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff8A2BE2),
          ),
        )
        
      ),
      
      body: Container(
        
        padding: EdgeInsets.only(left: 16, top: 37, right: 16),
        
        child: ListView(
          children: [
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xffCAC9FB),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildreset(context, "Change password"),
            buildlang(context, "Language"),
            buildblock(context, "App Blocker"),
            SizedBox(
              height: 40,
            ),


             Row(
              children: [
                Icon(
                  Icons.contact_page,
                  color: Color(0xffCAC9FB),
                ),
                SizedBox(
                  width: 8,
                // ignore: missing_required_param
                // ignore: deprecated_member_use
                ), FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new About()));
                    
                Text(
                  "Contacts",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              );
                              
                                      })              ],
            ),
            
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            buildabout(context, "About Us"),
            buildcontact(context, "Contact Us"),
            SizedBox(
              height: 10,
            ),
            ImageIcon(
     AssetImage("assets/ssp.png"),
     size: 400,
     color: Color(0xff8A2BE2),
),

          ],
        ),
      ),
    );
  }

  Row buildNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Colors.grey[600]),
        ),
        Transform.scale(
            scale: 0.7,
            child: CupertinoSwitch(
              value: isActive,
              onChanged: (bool val) {},
            ))
      ],
    );
  }

  GestureDetector buildcontact(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Are you sure?"),
                  ],
                ),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                  // ignore: deprecated_member_use
                  FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Contact()));
                      },
                      child: Text("Open")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}




  GestureDetector buildabout(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("About"),
                  ],
                ),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                  // ignore: deprecated_member_use
                  FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new About()));
                      },
                      child: Text("Open")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }






  GestureDetector buildreset(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Change Password"),
                  ],
                ),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                  // ignore: deprecated_member_use
                  FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Reset()));
                      },
                      child: Text("Open")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }





GestureDetector buildblock(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Blocker App"),
                  ],
                ),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                  // ignore: deprecated_member_use
                  FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Block()));
                      },
                      child: Text("Open")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
        
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }



GestureDetector buildlang(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Change Lang"),
                  ],
                ),
                actions: [
                  // ignore: deprecated_member_use
                  FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Close")),
                  // ignore: deprecated_member_use
                  FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      new Language()));
                      },
                      child: Text("Open")),
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600],
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
            
          ],
        ),
      ),
    );
  }
