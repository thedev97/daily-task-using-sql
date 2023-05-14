import 'dart:io';
import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import '../../../data/model/task.dart';

class DatabaseHelper {
  // Singleton Database Helper
  static DatabaseHelper? _databaseHelper;

  // Singleton Database
  static Database? _database;

  // Named constructor to create the instance of the DatabaseHelper
  DatabaseHelper._createInstance();

  // Defining the database
  // Create the table
  String taskTable = 'task_table';
  String colId = 'id';
  String colTitle = 'title';
  String colDescription = 'description';
  String colDate = 'date';
  String colPriority = 'priority';
  String colStatus = 'status';
  String colAssigned = 'assigned';

  /* When you used the factory key word for a constructor that case constructor
  allows you to return some values */
  factory DatabaseHelper() {
    // This is executed only once, Singleton object when it's null
    _databaseHelper ??= DatabaseHelper._createInstance();
    /*if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper._createInstance();
    }*/
    return _databaseHelper!;
  }

  Future<Database> get database async {
    // This is executed only once, Singleton object when it's null
    _database ??= await initializeDatabase();
    /*if (_database == null) {
      _database = await initializeDatabase();
    }*/
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    // await key is returns the future object and if you use the await key
    // then you can use the async method
    // Get the directory path for both Android and iOS to store the databse
    Directory dir = await getApplicationDocumentsDirectory();
    String path = '${dir.path}notes.db';

    // Open / Create the database at given path
    var notesDatabase =
        await openDatabase(path, version: 1, onCreate: _createDb);
    return notesDatabase;
  }

  // Create our database
  void _createDb(Database db, int newVersion) async {
    // Create the data base to use the required columns
    // SQL Query
    await db.execute(
        'CREATE TABLE $taskTable($colId INTEGER PRIMARY KEY AUTOINCREMENT, '
        '$colTitle TEXT, $colDescription TEXT, $colPriority INTEGER, '
        '$colDate TEXT, $colAssigned TEXT, $colStatus TEXT)');
  }

  // Write the CRUD operations
  // Fetch Operations: Get all task object to database
  Future<List<Map<String, dynamic>>> getTaskMapList() async {
    Database db = await this.database;
    // Raw Query
    //var result = await db.rawQuery('SELECT * FROM $taskTable ORDER BY $colPriority ASC');
    // Helper Function
    var result = await db.query(taskTable, orderBy: '$colPriority ASC');
    return result;
  }

  // Insert Operations: Insert a Task object to database
  Future<int> insertTask(Task task) async {
    Database db = await this.database;
    var result = await db.insert(taskTable, task.toMap());
    return result;
  }

  // Update Operations: Update a Task object and save into database
  Future<int> updateTask(Task task) async {
    Database db = await this.database;
    var result = await db.update(taskTable, task.toMap(),
        where: '$colId = ?', whereArgs: [task.id]);
    return result;
  }

  // Delete Operation: Delete a Note object from database
  Future<int> deleteTask(int id) async {
    Database db = await this.database;
    var result = db.rawDelete('DELETE FROm $taskTable WHERE $colId = $id');
    return result;
  }

  // Get number of Note objects in database
  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) FROM $taskTable');
    int? result = Sqflite.firstIntValue(x);
    return result!;
  }

  // Get the 'Map List' [ List<Map> ] and
  // convert it to 'Note List' [ List<Note> ]
  Future<List<Task>> getTaskList() async {
    // Get 'Map List' from database
    var taskMapList = await getTaskMapList();
    // Count the number of map entries in db table
    int count = taskMapList.length;

    List<Task> taskList = <Task>[];
    // For loop to create a 'Task List' from a 'Map List'
    for (int i = 0; i < count; i++) {
      taskList.add(Task.fromObject(taskMapList[i]));
    }
    return taskList;
  }
}
