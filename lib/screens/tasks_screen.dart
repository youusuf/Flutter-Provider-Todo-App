import 'package:flutter/material.dart';
import 'package:to_do_provider/widgets/tasks_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/models/task_data.dart';
class TasksScreen extends StatelessWidget {

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          showModalBottomSheet(context:context, builder:(context){
            return AddTaskScreen();
          });
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 30.0,top: 40.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                  ),
                  radius: 30.0,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 10.0,),
                Text("Todoey",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w700
                ),
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} tasks',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                  ),
                ),

              ],
            ),
          ),
          Expanded(child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30.0),
                    topLeft: Radius.circular(30.0)
                )
            ),
            child: TasksList(),
          )
          ),
        ],
      ),
    );
  }
}
