import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:todoeynew/models/task.dart';


class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name:'Buy milk'),
    Task(name:'Buy eggs'),
    Task(name:'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
