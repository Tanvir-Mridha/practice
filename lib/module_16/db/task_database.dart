import 'package:flutter/cupertino.dart';
import 'package:practice/module_16/model/task_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart' as path;

class TaskDatabase {
  static Database? _db;

  static Future<Database> getDb() async {
    if (_db != null) return _db!;

    _db = await openDatabase(
      path.join(await getDatabasesPath(), 'task.db'),
      version: 2,
      onCreate: (db, version) async {
        await db.execute(
            'CREATE TABLE task (id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT, isDone INTEGER)'
        );
      },
    );

    return _db!;
  }

  static Future<int> insertTask(Task task) async {
    final db = await getDb();

    return await db.insert(
      'task',
      task.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Task>> getTasks() async {
    final db = await getDb();

    final List<Map<String, dynamic>> maps = await db.query('task');

    return List.generate(
      maps.length,
          (i) => Task.fromMap(maps[i]),
    );
  }
  static Future<int> deleteTask(int id) async {
    final db = await getDb();
    return await db.delete(
      'task',
      where: 'id = ?',
      whereArgs: [id],
    );
  }
  static Future<int> updateTask(Task task) async {
    final db = await getDb();
    return await db.update(
      'task',
      task.toMap(),
      where: 'id = ?',
      whereArgs: [task.id]
    );
  }
}