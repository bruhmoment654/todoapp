import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;
  final Function(BuildContext?) deleteFunction;

  const TodoTile(
      {super.key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged,
      required this.deleteFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Theme.of(context).colorScheme.error,
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(8)),
          child: Row(children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(
              taskName,
              style: TextStyle(
                  decoration: !taskCompleted
                      ? TextDecoration.none
                      : TextDecoration.lineThrough,
                  color: Theme.of(context).colorScheme.onTertiaryContainer),
            ),
          ]),
        ),
      ),
    );
  }
}
