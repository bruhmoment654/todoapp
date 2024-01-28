import 'package:hive_flutter/adapters.dart';

class TodoDataBase {
  final _myBox = Hive.box('mybox');

  List toDoList = [];

  void createInitialData() {
    toDoList = [
      ['Make tutor', false],
      ['Bruh', false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }
}
