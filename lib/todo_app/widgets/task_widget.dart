import 'package:flutter/material.dart';
import 'package:flutter_first_app/data/tasks_data.dart';

import '../model/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Task task;
  int? index;

  TaskWidget(this.task, this.fun);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: Row(
        children: [
          CheckboxListTile(
            title: Text(task.title),
            value: task.isCompleted,
            onChanged: (v) {
              fun(task);
            },
          ),
          IconButton(
            onPressed: () {
              tasksList.removeAt(index!);
            },
            icon: Icon(Icons.delete,color: Colors.red,),
          ),
        ],
      ),
    );
  }
}
