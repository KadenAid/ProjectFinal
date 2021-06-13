import 'package:application/exp/data.dart';
import 'package:application/exp/expen.dart';
import 'package:application/exp/expp.dart';
import 'package:flutter/material.dart';

class Expense extends StatefulWidget{
  @override 
  ExpensePageState createState()=>new ExpensePageState();
  }

class ExpensePageState extends State<Expense>{
    
  

  final List<Transaction> transaction = [];

  void _addNewTransaction(String trxTitle, double trxAmount) {
    final newTrx = Transaction(
      title: trxTitle,
      amount: trxAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      transaction.add(newTrx);
    });
  }

  void showModal(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return NewTransaction(_addNewTransaction);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        
        backgroundColor: Color(0xffB2B1F2),
        
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //NewTransaction(_addNewTransaction),
            TransactionList(transaction),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => showModal(context),
        child: Icon(
          Icons.add_circle_outline_rounded,
          size: 55,
          color: Color(0xffB2B1F2),
        ),
      ),
    );
  }
}
