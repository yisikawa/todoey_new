import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is a task',
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough:null,
      ),),
      trailing: TaskCheckbox(
      checkboxState: isChecked,
      toggleCheckboxCallback: (bool checkboxState) {
        setState(() {
          isChecked = checkboxState;
        });
      },),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxState,this.toggleCheckboxCallback});

  final bool checkboxState ;
  final Function toggleCheckboxCallback;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: checkboxState,
      onChanged: toggleCheckboxCallback,
    );
  }
}
