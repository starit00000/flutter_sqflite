

import 'package:flutter/cupertino.dart';
import 'package:flutter_sqflite/database/database_helper.dart';
import 'package:flutter_sqflite/models/todo.dart';

class SQFLiteServices{

  static final databaseHelper = DatabaseHelper.instance;

  static void insert(String title, int priority, int isDone) async {
    ToDo toDo = ToDo(title: title, priority: priority, isDone: isDone);
    int id = await databaseHelper.insert(toDo.toMapWithoutId());
    print('SQFLiteServices.insert : ' + 'id = $id');
  }

  static List<ToDo> getAllToDos() {
    databaseHelper.queryAllRows().then((todoList){
      for(ToDo toDo in todoList){
        print('SQFLiteServices.getAllToDos : ' + toDo.toMap().toString());
      }
      return todoList;
    });
  }
}