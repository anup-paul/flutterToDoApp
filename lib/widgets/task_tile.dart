import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({Key? key}) : super(key: key);

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  //  void checkBoxCallBack(bool? checkBoxState) {
  //           if (checkBoxState != null) {
  //             setState(() {
  //               isChecked = checkBoxState;
  //             });
  //           }
  //         }),

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "This is task",
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
          checkBoxState: isChecked,
          toggleCheckBoxState: (bool? checkBoxState) {
            if (checkBoxState != null) {
              setState(() {
                isChecked = checkBoxState;
              });
            }
          }),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox(
      {required this.checkBoxState, required this.toggleCheckBoxState});

  final bool checkBoxState;
  final ValueChanged<bool?> toggleCheckBoxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: const Color.fromARGB(255, 14, 23, 48),
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}
