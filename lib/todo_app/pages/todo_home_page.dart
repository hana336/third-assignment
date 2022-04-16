import '../pages/all_tasks.dart';
import '../pages/incomplete_tasks.dart';
import '../pages/complete_tasks.dart';
import '../data/tasks_data.dart';
import '../models/task_model.dart';
import 'package:flutter/material.dart';


class TodoHomePage extends StatefulWidget {
  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  changeTaskCompleteness(Task task) {
    int index = tasksList.indexOf(task);
    tasksList[index].isCompleted = !tasksList[index].isCompleted;
    setState(() {});

  }
  delete(Task task) {
    int index = tasksList.indexOf(task);
    tasksList.removeAt(index);
    setState(() {});
  }
  
  @override
Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TODO APP'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.list),
                text: 'All Tasks',
              ),
              Tab(
                icon: Icon(Icons.done),
                text: 'Complete Tasks',
              ),
              Tab(
                icon: Icon(Icons.cancel),
                text: 'InComplete Tasks',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              AllTasksScreen(changeTaskCompleteness,delete),
              CompleteTasksScreen(
                  changeTaskCompleteness,delete),
              InCompleteTasksScreen(
                  changeTaskCompleteness,delete)
            ],
          ),
        ));
  }
}
