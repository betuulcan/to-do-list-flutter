import 'package:flutter/material.dart';
import 'package:todo_list/todo.dart';

class YeniTodoDialog extends StatelessWidget {
  final controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Yeni Görev'),
      content: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Bir görev girin',
        ),
        cursorColor: Colors.orange,
        controller: controller,
        autofocus: true,
      ),
      actions: <Widget>[
        FlatButton(
          child: Text('İptal', style: TextStyle(color: Colors.orange)),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('Ekle', style: TextStyle(color: Colors.orange)),
          onPressed: () {
            final todo = new Todo(title: controller.value.text);
            controller.clear();

            Navigator.of(context).pop(todo);
          },
        ),
      ],
    );
  }
}
