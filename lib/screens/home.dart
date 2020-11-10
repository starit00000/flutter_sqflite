import 'package:flutter/material.dart';
import 'package:flutter_sqflite/services/sqflite_services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My ToDos'),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text('Insert'),
              onPressed: (){
                SQFLiteServices.insert('Title', 1, 0);
              },
            ),
            RaisedButton(
              child: Text('Get'),
              onPressed: (){
                SQFLiteServices.getAllToDos();
              },
            ),
            RaisedButton(
              child: Text('Delete'),
              onPressed: (){

              },
            ),
          ],
        ),
      ),
    );
  }
}
