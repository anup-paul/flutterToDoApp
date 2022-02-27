import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.only(top: 30, left: 40, right: 40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromARGB(255, 14, 23, 48),
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 14, 23, 48)),
              cursorColor: const Color.fromARGB(255, 14, 23, 48),
              autofocus: true,
              textAlign: TextAlign.center,
              textAlignVertical: TextAlignVertical.center,
            ),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                color: const Color.fromARGB(255, 14, 23, 48),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
