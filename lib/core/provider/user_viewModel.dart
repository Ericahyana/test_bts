import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_masuk/core/model/register.dart';
import 'package:test_masuk/core/model/user.dart';
import 'package:test_masuk/core/services/server.dart';
import 'package:test_masuk/view/home.dart';

class UserViewModel {
  //untuk get data tracking
  Future<User> getLogin(String username, String password, context) async {
    try {
      http.Response hasil = await http.post(
        Uri.encodeFull(Api().server + "login"),
        body: {"username": username, "password": password},
      );
      if (hasil.statusCode == 200) {
        print("data login ada ");
        // print(nis);
        // print(password);
        print(hasil.body);
        final data = userFromJson(hasil.body);
        print("----------------");
        print(data.toJson());
        print("----------------");
        Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => new Home(),
      ));

        return data;
      } else {
        print("error status " + hasil.statusCode.toString());
        return null;
      }
    } catch (e) {
      // alertE(context,e);
      print("Error boss");
      print("error catch $e");
      return null;
    }
  }

  //untuk detail view
  Future<Regis> regis(String email, String username, String password) async {
    try {
      http.Response hasil = await http.post(
        Uri.encodeFull(Api().server + "register"),
        body: {"email": email, "username": username, "password": password},
      );
      if (hasil.statusCode == 200) {
        print("data regis success");
        final data = regisFromJson(hasil.body);
        return data;
      } else {
        print("error status " + hasil.statusCode.toString());
        return null;
      }
    } catch (e) {
      print("error catch $e");
      return null;
    }
  }
}

class SharedPreferences {}
