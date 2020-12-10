import 'package:english_test1/Question.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  static DatabaseProvider _instance =
  DatabaseProvider._internal();

  factory DatabaseProvider() => _instance;

  DatabaseProvider._internal();

  Database db;
  Future<List<Question>> questions(int testId) async {

    final List<Map<String, dynamic>> maps = await db.query('questions', where: 'testNumber =?', whereArgs: [testId],);
    return [
      for (var item in maps)
        Question.fromMap(item)
    ];

  }

 Future<void> openSolutionDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'solution_database.db');

    db = await openDatabase(
        path,
        version: 1,
        onCreate: (Database db, int version) => _createDatabase(db)
    );
  }

  Future<void> _createDatabase(Database db) async {
    await db.execute('CREATE TABLE IF NOT EXISTS questions ('
    'testNumber INT, '
        'question TEXT, '
        'rightAnswer TEXT, '

        'answers TEXT)');
    for (var item in test1)
      {
        await db.insert('questions', item.toMap());
      }
  }

}
