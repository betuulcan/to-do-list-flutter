import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';
import 'package:todo_list/yeni_todo_dialog.dart';
import 'todo_list.dart';

class TodoListEkran extends StatefulWidget {
  @override
  _TodoListEkranState createState() => _TodoListEkranState();
}

class _TodoListEkranState extends State<TodoListEkran> {
  List<Todo> todos = [];

  _toggleTodo(Todo todo, bool checkEdildi) {
    setState(
      () {
        todo.bitti = checkEdildi;
      },
    );
  }

  _ekleTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return YeniTodoDialog();
      },
    );
    if (todo != null) {
      setState(
        () {
          todos.add(todo);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo List'),
        backgroundColor: Colors.teal,
      ),
      body: TodoList(
        todos: todos,
        onToDoToggle: _toggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
        onPressed: _ekleTodo,
      ),
    );
  }
}
