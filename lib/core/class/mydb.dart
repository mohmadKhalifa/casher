// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class Sqldp {
//   static Database? _db;
//   Future<Database?> get db async {
//     if (_db == null) {
//       _db = await initialDb();
//       return _db;
//     } else {
//       return _db;
//     }
//   }

//   initialDb() async {
//     String databasesPath = await getDatabasesPath();
//     String path = join(databasesPath, 'demo.db');
//     Database mydb = await openDatabase(path,
//         onCreate: _onCarete, version: 3, onUpgrade: _onUpgrade);
//     return mydb;
//   }

//   _onUpgrade(Database db, int oldVersion, int newVersion) {
//     print("_onUpgrade______________");
//   }

//   _onCarete(Database db, int version) async {
//     await db.execute("""
// CREATE TABLE 'users'(
//   users_id INTEGER  NOT NULL  PRIMARY KEY AUTOINCREMENT,
//   users_name TEXT NOT NULL,
//   users_date  Date NOT NULL
// )

// """);
//     print("Creat______________");
//   }

//   readData(String sql) async {
//     Database? mydb = await db;
//     List<Map> response = await mydb!.rawQuery(sql);
//     return response;
//   }

//   updateData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawUpdate(sql);
//     return response;
//   }

//   deleteData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawDelete(sql);
//     return response;
//   }

//   insertData(String sql) async {
//     Database? mydb = await db;
//     int response = await mydb!.rawInsert(sql);
//     return response;
//   }
// }
