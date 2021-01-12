// simple example to retrive and save employee data from SQFlite

import 'dart:io';

import 'package:path/path.dart';
import "package:path_provider/path_provider.dart";
import 'package:sqflite/sqflite.dart';

class DBConnect {
  static Database _database;

  DBConnect._();
  static final DBConnect db = DBConnect._();

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "highweh.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      String createSessionTable = "CREATE TABLE session (" +
          "id INTEGER PRIMARY KEY AUTOINCREMENT," +
          "user_id TEXT," +
          "access_token TEXT," +
          "role TEXT" +
          ")";
      String createUserTable = "CREATE TABLE user (" +
          "uuid TEXT PRIMARY KEY," +
          "name TEXT," +
          "email TEXT," +
          "phoneNumber TEXT," +
          "status TEXT," +
          "preferredLanguage TEXT," +
          "photoUrl TEXT," +
          "address TEXT," +
          "bornOn TEXT," +
          "registeredOn TEXT," +
          "organisation TEXT," +
          "city TEXT," +
          "gender TEXT," +
          "subdivision TEXT," +
          "idUrl TEXT," +
          "proofOfAddressUrl TEXT," +
          "role TEXT" +
          ")";

      var batch = db.batch();
      batch.execute(createSessionTable);
      batch.execute(createUserTable);
      await batch.commit(noResult: true);
    });
  }

  Future<Database> get database async {
    if (_database != null) return _database;

    // if _database is null we instantiate it
    _database = await initDB();
    return _database;
  }

  Future close() async => db.close();
}
