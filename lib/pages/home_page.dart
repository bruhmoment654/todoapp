import 'package:demo/data/database.dart';
import 'package:demo/util/dialog_box.dart';
import 'package:demo/util/todo_tile.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  final _myBox = Hive.box('mybox');
  TodoDataBase db = TodoDataBase();

  @override
  void initState() {
    if (_myBox.get('TODOLIST') == null) {
      db.createInitialData();
    } else {
      db.loadData();
    }

    super.initState();
  }

  void createNewTask() {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller,
            onSave: () {
              setState(() {
                db.toDoList.add([_controller.value.text, false]);
              });
              Navigator.of(context).pop();
            },
            onCancel: Navigator
                .of(context)
                .pop,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    var scheme = Theme
        .of(context)
        .colorScheme;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: scheme.background,
        title: Text(
          'TO DO',
          style: Theme
              .of(context)
              .textTheme
              .headlineMedium,
        ),
      ),
      body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index) {
            return TodoTile(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onChanged: (value) {
                setState(() {
                  db.toDoList[index][1] = value;
                });
              },
              deleteFunction: (context) {
                setState(() {
                  db.toDoList.removeAt(index);
                });
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTask,
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
