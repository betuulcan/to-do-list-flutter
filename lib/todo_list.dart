import 'package:flutter/material.dart';
import 'todo.dart';

typedef ToggleTodoCallback = void Function(Todo, bool);

class TodoList extends StatelessWidget {
  TodoList({@required this.todos, this.onToDoToggle});

  final List<Todo> todos;
  final ToggleTodoCallback onToDoToggle;

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];
    return CheckboxListTile(

      activeColor: Colors.orange,
      checkColor: Colors.white,
      value: todo.bitti,
      title: Text(todo.title),
      
      onChanged: (bool isChecked) {
        onToDoToggle(todo, isChecked);

      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}
