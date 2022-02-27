import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        //  shrinkWrap: true,
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          TaskTile(),
          TaskTile(),
          TaskTile(),
          TaskTile(),
        ]);
  }
}
