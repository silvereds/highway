import 'package:mobile/entities/session.dart';

import 'db_connect.dart';

class SessionDao {
  DBConnect dbConnect;

  SessionDao(this.dbConnect);

  Future<Session> createSession(Session session) async {
    final db = await dbConnect.database;
    session.id = await db.insert("session", session.toJson());
    return session;
  }

  Future<Session> getSession() async {
    final db = await dbConnect.database;
    var res = await db.query("session", where: "id = ?", whereArgs: [1]);
    return res.isNotEmpty ? Session.fromJson(res.first) : null;
  }

  Future<int> updateSession(Session session) async {
    final db = await dbConnect.database;
    var res = await db
        .update("session", session.toJson(), where: "id = ?", whereArgs: [1]);
    return res;
  }

  Future<int> deleteSession() async {
    final db = await dbConnect.database;
    return await db.delete("session", where: "id = ?", whereArgs: [1]);
  }
}
