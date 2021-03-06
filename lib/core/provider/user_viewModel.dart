import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_masuk/core/model/register.dart';
import 'package:test_masuk/core/model/res_login.dart';
import 'package:test_masuk/core/services/server.dart';
import 'package:test_masuk/view/home.dart';
import 'dart:convert';

class UserViewModel {
  //untuk login
  postLogin(String username, String password, BuildContext context) async {
    try {
      final bod= jsonEncode({
        "password": password,
        "username": username
      });
      http.Response hasil =
          await http.post(Uri.encodeFull(Api().server + "login"),
        headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json'
      }, body: bod);
      if (hasil.statusCode == 200) {
        print("data login ada ");
        // print(nis);
        // print(password);
        print(hasil.body);
        final data = resloginFromJson(hasil.body);
        print("----------------");
        print(data.toJson());
        print("----------------");
        var token = data.data.token;
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (BuildContext context) => new Home(token),
        ));

        return data;
      } else {
        print("error status " + hasil.statusCode.toString());

        print(hasil.body);
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
  Future<Resregis> regist(String email, String username, String password,
      BuildContext context) async {
    try {
      final bod= jsonEncode({
        "email": email,
        "password": password,
        "username": username
      });

      http.Response hasil = await http.post(
        Uri.encodeFull(Api().server + "register"),
        headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json'
      },
        body: bod,
      );
      if (hasil.statusCode == 200) {
        print("data regis success");
        final data = resregisFromJson(hasil.body);
        Navigator.pop(context);
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
