import 'package:flutter/material.dart';
import '../data/tasks_data.dart';
import '../widgets/task_widget.dart';


class AllTasksScreen extends StatelessWidget {
  Function func;
  Function delete;

  AllTasksScreen(this.func, this.delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
         return TaskWidget(tasksList[index], func, delete);
        });
  }
}