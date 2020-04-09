import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked ;
  final String taskTitle;

  TaskTile({this.isChecked,this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough:null,
      ),),
      trailing: TaskCheckbox(
      checkboxState: isChecked,
//      toggleCheckboxCallback: (bool checkboxState) {
//        setState(() {
//          isChecked = checkboxState;
//        });
//      },
      ),
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
