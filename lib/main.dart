import 'package:flutter/material.dart';
import 'package:todo_list/todo_liste_ekran.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List',
      home: TodoListEkran(),
    );
  }
}
