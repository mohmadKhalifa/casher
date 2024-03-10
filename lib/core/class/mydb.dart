import 'package:path/path.dart';
// import 'package:sqflite_common/sqlite_api.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite/sqflite.dart';

class Sqldp {
  static Database? _db;
  Future<Database?> get db async {
    if (_db == null) {
      _db = await initialDb();
      return _db;
    } else {
      return _db;
    }
  }

  initialDb() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');
    Database mydb = await openDatabase(path, onCreate: _onCarete);
    return mydb;
  }

  _onCarete(Database db, int version) async {
    await db.execute("""
CREATE TABLE 'users'(
  users_id INTEGER AUTOINCREMENT NOT NULL  PRIMARY KEY,
  users_name TEXT NOT NULL,
  user_date  TIMESTAMP NOT NULL
)

""");
    print("Creat______________");
  }
}




// (Database db, int version) async {
//       // When creating the db, create the table
      
//     });


// final db = await openDatabase('my_database.db');

// // Insert a record with a timestamp
// await db.insert('my_table', {'timestamp': DateTime.now()});

// // Query for records after a specific time
// final results = await db.query('my_table', where: 'timestamp > ?', whereArgs: [DateTime.parse('2024-03-11 00:00:00')]);

// // Query for records between two times
// final results = await db.query('my_table', where: 'timestamp BETWEEN ? AND ?', whereArgs: [DateTime.parse('2024-03-10 00:00:00'), DateTime.parse('2024-03-11 00:00:00')]);