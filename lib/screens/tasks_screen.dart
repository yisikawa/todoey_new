import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Icon(Icons.list),
            Text('Todoey'),
          ],
        ),
      ),
    );
  }
}
