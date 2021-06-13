
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(DoList());
}


class DoList extends StatefulWidget {
  @override
  DoListPageState createState() => new DoListPageState();
}

class DoListPageState extends State<DoList> {
   String todoTitle = "";

  createTodos() {
    DocumentReference documentReference =
        // ignore: deprecated_member_use
        Firestore.instance.collection("MyTodos").document(todoTitle);

    //Map
    Map<String, String> todos = {"todoTitle": todoTitle};

    // ignore: deprecated_member_use
    documentReference.setData(todos).whenComplete(() {
      print("$todoTitle created");
    });
  }

  deleteTodos(item) {
    DocumentReference documentReference =
        // ignore: deprecated_member_use
        Firestore.instance.collection("MyTodos").document(item);

    documentReference.delete().whenComplete(() {
      print("$item deleted");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do List"),
        backgroundColor: Color(0xffCAC9FB),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                      
                  title: Text("Add Todolist"),
                  backgroundColor: Color(0xffCAC9FB),
                  content: TextField(
                    onChanged: (String value) {
                      todoTitle = value;
                    },
                  ),
                  actions: <Widget>[
                    // ignore: deprecated_member_use
                    FlatButton(
                        onPressed: () {
                          createTodos();
                          
                          Navigator.of(context).pop();
                        },
                        
                        child: Text("Add")),
                        
                  ],
                );
              });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,

           
        ),
      ),
      body: StreamBuilder(
          // ignore: deprecated_member_use
          stream: Firestore.instance.collection("MyTodos").snapshots(),
          builder: (context, snapshots) {
            if (snapshots.hasData) {
              return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshots.data.documents.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot documentSnapshot =
                        snapshots.data.documents[index];
                    return Dismissible(
                        onDismissed: (direction) {
                          deleteTodos(documentSnapshot["todoTitle"]);
                        },
                        key: Key(documentSnapshot["todoTitle"]),
                        child: Card(
                          elevation: 4,
                          margin: EdgeInsets.all(8),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: ListTile(
                            title: Text(documentSnapshot["todoTitle"]),
                            trailing: IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
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
                        
            deleteTodos(documentSnapshot["todoTitle"]);
                      },
                      child: Text("Delete")),   
                ],
                
              );
            }
     /*   
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    ); 
                
            
*/
                            );}),
                          ),
                        ));
                  });
            } else {
              return Align(
                alignment: FractionalOffset.bottomCenter,
                child: CircularProgressIndicator(),
              );
            }
          }),
    );

  }
}
  

         
