import 'package:samagyan_attendence/models/user.dart';
import 'dart:async';
import 'package:samagyan_attendence/data/DatabaseHandler.dart';
class LoginCtr {
//   // DatabaseHelper con = new DatabaseHelper();
//
// //insertion
//   Future<int> saveUser(myUser user) async {
//     var dbClient = await con.db;
//     int res = await dbClient.insert("User", user.toMap());
//     return res;
//   }
//
//   //deletion
//   Future<int> deleteUser(myUser user) async {
//     var dbClient = await con.db;
//     int res = await dbClient.delete("User");
//     return res;
//   }
//
//   Future<myUser?> getLogin(String user, String password) async {
//     var dbClient = await con.db;
//     var res = await dbClient.rawQuery("SELECT * FROM user WHERE username = '$user' and password = '$password'");
//
//     if (res.length > 0) {
//       return new myUser.fromMap(res.first);
//     }
//
//     return null;
//   }
//
//   Future<List<myUser>?> getAllUser() async {
//     var dbClient = await con.db;
//     var res = await dbClient.query("user");
//
//     List<myUser>? list =
//     res.isNotEmpty ? res.map((c) => myUser.fromMap(c)).toList() : null;
//
//     return list;
//   }
}