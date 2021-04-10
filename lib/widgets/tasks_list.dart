import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/models/task_data.dart';
import 'package:to_do_provider/widgets/task_tile.dart';
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder:(context,taskData,child){
        return ListView.builder(
            itemCount: taskData.taskCount,
            itemBuilder:(context,index){
              return TaskTile(
                  taskTitle:taskData.tasks[index].name,
                  isChecked:taskData.tasks[index].isDone,
                  checkBoxCallback:(checkboxState){
                      taskData.updateTask(taskData.tasks[index]);

                  },
                    longPressCallback:(){
                      taskData.deleteTask(taskData.tasks[index]);
              },
              );
            });
      },

    );
  }
}
