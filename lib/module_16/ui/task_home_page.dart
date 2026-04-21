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
  Future<void>deleteTask(int id)async {
    await TaskDatabase.deleteTask(id);
    refreshTask();
  }
  Future<void>toggleTaskStatus(Task task)async {
    await TaskDatabase.updateTask(Task(
      id: task.id,
      title: task.title,
      isDone: !task.isDone

    ));
    refreshTask();
  }
  Future<void>updateTask(Task task)async {
    await TaskDatabase.updateTask(task);
    refreshTask();
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
                return Dismissible(
                  key: Key(task.id.toString()),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    color: Colors.red,
                    child: Icon(Icons.delete,color: Colors.white,),

                  ),
                  onDismissed: (_) async {
                    final deletedTask = task; // backup

                    await deleteTask(task.id!);

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Task deleted...'),
                        action: SnackBarAction(
                          label: 'UNDO',
                          onPressed: () async {
                            await TaskDatabase.insertTask(deletedTask);
                            refreshTask();
                          },
                        ),
                      ),
                    );

                    refreshTask();
                  },
                  child: Card(
                    elevation: 24,
                    child: ListTile(
                      leading: Checkbox(value: task.isDone, onChanged: (_){
                        toggleTaskStatus(task);
                      }),
                      title: Text(task.title,style: TextStyle(
                         decoration: task.isDone? TextDecoration.lineThrough: TextDecoration.none,
                        color: task.isDone ? Colors.grey: Colors.black
                      ),),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {
                              final controller = TextEditingController(text: task.title);
                  
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("Edit Task"),
                                    content: TextField(
                                      controller: controller,
                                      decoration: InputDecoration(
                                        hintText: "Enter new title",
                                      ),
                                    ),
                                    actions: [
                                      TextButton(
                                        onPressed: () => Navigator.pop(context),
                                        child: Text("Cancel"),
                                      ),
                                      TextButton(
                                        onPressed: () async {
                                          if (controller.text.isNotEmpty) {
                                            await TaskDatabase.updateTask(
                                              Task(
                                                id: task.id,
                                                title: controller.text,
                                                isDone: task.isDone, 
                                              ),
                                            );
                                            refreshTask();
                                            Navigator.pop(context);
                                          }
                                        },
                                        child: Text("Update"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.edit),
                          ),
                          IconButton(onPressed: (){
                            deleteTask(task.id!);
                          }, icon: Icon(Icons.delete,color: Colors.red,))
                        ],
                      ),
                    ),
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
