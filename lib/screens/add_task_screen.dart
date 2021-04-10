import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/models/task_data.dart';
String newTaskTitle;
class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.w600,
              color: Colors.lightBlueAccent
            ),
              textAlign: TextAlign.center,
            ),
            TextField(
              onChanged:(newText){
               // print(newText);
                newTaskTitle = newText;
              },
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            Material(
              color: Colors.lightBlueAccent,
              child: TextButton(
                onPressed:(){
                  Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                  child:Text(
                      "Add",
                    style: TextStyle(
                      color: Colors.white
                    ),

                  ),

              ),
            )
          ],
        ),
      ),
    );
  }
}
