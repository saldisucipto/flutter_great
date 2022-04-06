import 'package:path/path.dart' as path;
import 'package:sqflite/sqflite.dart' as sql;
import 'package:sqflite/sqlite_api.dart';

class DBhelp {
  static Future<Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(
      path.join(
        dbPath,
        'places.db',
      ),
      onCreate: (db, verion) {
        return db.execute(
            'CREATE TABLE user_places(id TEXT PRIMARY KEY, title TEXT, image TEXT)');
      },
      version: 1,
    );
  }

  static Future<void> insert(String table, Map<String, Object> data) async {
    final db = await DBhelp.database();
    db.insert(
      table,
      data,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getData(String table) async {
    final db = await DBhelp.database();
    return db.query(table);
  }
}
