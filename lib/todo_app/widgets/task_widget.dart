import 'package:flutter/material.dart';
import 'package:state_managment/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;
   Function delete;
  TaskWidget(this.task, this.fun,this.delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Column(children: [
     CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
      ),
       CheckboxListTile(
        title: Text("delete the task"),
        value: task.remove,
          onChanged: (v) {
            fun(task);
            delete(task);
          },
        ),
      ]),
    );
  }
}