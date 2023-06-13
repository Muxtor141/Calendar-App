import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class LocaleDataBase {
  static const _databaseName = "calendar_database.db";
  static const _databaseVersion = 1;

  static const table = 'events';

  static const columnId = '_id';
  static const eventDay = 'day';
  static const eventYear = 'year';
  static const eventMonth = 'month';
  static const eventName = 'name';
  static const eventDesc = 'desc';
  static const eventTime = 'time';
  static const eventDate = 'date';
  static const eventLocation = 'location';
  static const eventColorHex = 'colorHex';

  late Database _db;

  Future<void> init() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, _databaseName);
    _db = await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }


  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $eventName TEXT NOT NULL,
            $eventDesc TEXT NOT NULL,
            $eventLocation TEXT NOT NULL,
            $eventColorHex TEXT NOT NULL,
            $eventTime TEXT NOT NULL,
            $eventDate TEXT NOT NULL,
            $eventDay INTEGER NOT NULL,
            $eventMonth INTEGER NOT NULL,
            $eventYear INTEGER NOT NULL
         
          )
          ''');
  }

  Future<int> insertEvent(Map<String, dynamic> row) async {
    return await _db.insert(table, row,conflictAlgorithm: ConflictAlgorithm.abort);
  }


  Future<List<Map<String, dynamic>>> queryAllRows() async {
    return await _db.query(table);
  }

  Future<int> queryRowCount() async {
    final results = await _db.rawQuery('SELECT COUNT(*) FROM $table');
    return Sqflite.firstIntValue(results) ?? 0;
  }

  Future<List<Map<String, Object?>>> queryDayEvents(
      {required int day, required int month, required int year}) async {
    final results = await _db.rawQuery(
        'SELECT * FROM $table  WHERE $eventDay="$day"  AND $eventMonth="$month" AND  $eventYear="$year"');
    return results;
  }


  Future<int> update(Map<String, dynamic> row) async {
    int id = row[columnId];
    return await _db.update(
      table,
      row,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  Future<int> delete(int id) async {
    return await _db.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
