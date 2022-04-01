import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/user.dart';

class DatabaseHandler {
  Future<Database> initializeDB() async {
    String path = await getDatabasesPath();
    return openDatabase(
      join(path, 'database.db'),
      onCreate: (database, version) async {
        await database.execute("CREATE TABLE IF NOT EXISTS Teachers(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,email TEXT,password TEXT)");
        await database.execute("CREATE TABLE IF NOT EXISTS Students(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,email TEXT,password TEXT)");
        await database.execute("CREATE TABLE IF NOT EXISTS Admin(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,email TEXT,password TEXT)");

      },
      version: 1,
    );
  }
  Future<int> insertUser(List<myUser> users) async {
    int result = 0;
    final Database db = await initializeDB();
    for(var user in users){
      result = await db.insert('Teachers', user.toMap());
    }
    return result;
  }

}

// await ourDb.execute("CREATE TABLE IF NOT EXISTS Teachers(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,email TEXT,password TEXT)");
// await ourDb.execute("CREATE TABLE IF NOT EXISTS Students(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,email TEXT,password TEXT)");
// await ourDb.execute("CREATE TABLE IF NOT EXISTS Admin(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,email TEXT,password TEXT)");



