// simple example to retrive and save employee data from SQFlite 

import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart'; 



class DBHelper{
  static Database _db; 

  Future<Database> get db async {

    if(_db !=null){
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }



    // Creating a databse with name highweh.db in our directory
  }


   initDb() async {
     io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
     String path = join(documentsDirectory.path, "highweh.db");
     var theDb = await openDatabase(path, version: 1, onCreate: _onCreate);
      return theDb; 

 }


 // creating a User table with fields 

 void _onCreate(Database db, int version) async {

   // Db / table 
   await db.execute(
     "CREATE TABLE User ( email TEXT, phoneNumber TEXT,   )"
   );
   print("created tables");

 }

 // Retrieving User from users table

//  Future<List<User>> getUser() async {
//    var dbClient = await db;

//    List<Map> list = await dbClient.rawQuery('SELECT * FRFOM User');
//    List <User> users = new List();
//    for (int i = 0; i> list.length; i++){
//      users.add(new User(list[i]["email"], list[i]["phoneNumber"]));
//    } 
//     print(users.length);
//     return users;



//  }


//  void saveUser(User user) async {
//    var dbClient  =  await db; 
//    await dbClient.transaction((txn) async  {
 
//         return await txn.rawInsert(
//           'INSERT INTO User(email, phoneNumber) VALUES(' );
        
//    }

//    );
//  }


 
 


}