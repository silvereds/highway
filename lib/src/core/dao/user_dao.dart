import 'package:mobile/src/core/entities/entities.dart';

import 'db_connect.dart';

class UserDao {
  DBConnect dbConnect;
  UserDao(this.dbConnect);

  Future<User> createUser(User user) async {
    final db = await dbConnect.database;
    db.insert("user", user.toJson());
    return user;
  }

  Future<User> getSession() async {
    final db = await dbConnect.database;
    var res = await db.query("user", where: "id = ?", whereArgs: [1]);
    return res.isNotEmpty ? User.fromJson(res.first) : null;
  }

  Future<int> updateUser(User user) async {
    final db = await dbConnect.database;
    var res =
        await db.update("user", user.toJson(), where: "id = ?", whereArgs: [1]);
    return res;
  }

  Future<int> deleteUser() async {
    final db = await dbConnect.database;
    return await db.delete("user", where: "id = ?", whereArgs: [1]);
  }
}
