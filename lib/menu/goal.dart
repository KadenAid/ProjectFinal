

import 'package:application/goal/add.dart';
import 'package:application/goal/list.dart';
import 'package:flutter/material.dart';

class Goal extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Goal> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      Container(),
    ];

    return Scaffold(
      appBar: AppBar(
        title:new Text('Goal Tracker'),
        backgroundColor: Color(0xffB2B1F2),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Goal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28),
            label: 'Completed',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Color(0xffB2B1F2),
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTodoDialogWidget(),
          barrierDismissible: false,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}