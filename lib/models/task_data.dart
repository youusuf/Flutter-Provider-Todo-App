import 'package:flutter/material.dart';
import 'task.dart';
class TaskData extends ChangeNotifier{

  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Eggs"),
    Task(name: "Buy Bread"),
  ];
  int get taskCount{
    return tasks.length;
  }
  void addTask(String newTaskTitle){
   tasks.add(Task(name: newTaskTitle));
   notifyListeners();

  }
  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }
  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}