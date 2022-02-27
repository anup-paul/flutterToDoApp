import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/screens/add_task_screen.dart';

import '../widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => const AddTaskScreen());
          },
          backgroundColor: const Color.fromARGB(255, 14, 23, 48),
          child: const Icon(Icons.add),
        ),
        backgroundColor: const Color.fromARGB(255, 14, 23, 48),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 40, right: 30, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      maxRadius: 30,
                      backgroundColor: Colors.white,
                      child: const Icon(
                        Icons.menu,
                        size: 30,
                        color: Color.fromARGB(255, 14, 23, 48),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "ToDoye",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 60),
                    ),
                    Text(
                      "12 tasks",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                  child: TaskList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
