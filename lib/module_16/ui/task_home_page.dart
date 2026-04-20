import 'package:flutter/material.dart';
import 'package:practice/module_16/db/task_database.dart';

import '../model/task_model.dart';

class TaskHomePage extends StatefulWidget {
  const TaskHomePage({super.key});

  @override
  State<TaskHomePage> createState() => _TaskHomePageState();
}

class _TaskHomePageState extends State<TaskHomePage> {
  TextEditingController controller = TextEditingController();
  List<Task> tasks = [];
  Future<void>refreshTask()async {
    tasks = await TaskDatabase.getTasks();
    setState(() {

    });
  }
  Future<void>addTask()async {
    if(controller.text.isNotEmpty){
      TaskDatabase.insertTask(Task(title: controller.text, isDone: false));
      controller.clear();
      refreshTask();
    }
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a task'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    refreshTask();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task with DB'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Row(
              children: [
                Expanded(child: TextField(
                  controller: controller,
                )),
                IconButton(onPressed: addTask, icon: Icon(Icons.add)),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
                itemBuilder: (context,index){
                final task =tasks[index];
                return Card(
                  elevation: 24,
                  child: ListTile(
                    leading: Checkbox(value: true, onChanged: (_){}),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,))
                      ],
                    ),
                    title: Text(task.title),
                  ),
                );
                }
            ),
          )
        ],
      ),

    );
  }
}
