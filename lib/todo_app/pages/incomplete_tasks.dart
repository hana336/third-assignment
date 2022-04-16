
import 'package:flutter/material.dart';
import '../data/tasks_data.dart';
import '../widgets/task_widget.dart';


class InCompleteTasksScreen extends StatelessWidget {
  Function func;
  Function delete;
    InCompleteTasksScreen(this.func, this.delete);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.where((element) => !element.isCompleted).length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList
              .where((element) => !element.isCompleted)
              .toList()[index],func,delete);
        });
  }
}
