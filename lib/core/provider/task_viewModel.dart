import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_masuk/core/model/ceklish.dart';
import 'package:test_masuk/core/model/register.dart';
import 'package:test_masuk/core/services/server.dart';
// import 'package:test_masuk/view/home.dart';
import 'dart:convert';

class CheckViewModel {
  //untuk get checklish
  Future<Ceklish> getCek(String token) async {
    try {
      
      http.Response hasil =
          await http.get(Uri.encodeFull(Api().server + "checklist"),
        headers: {
        'Content-type': '*/*',
        'Accept': 'application/json',
        'Authorization':'Bearer '+token
      },);
      print(hasil.headers);
      if (hasil.statusCode == 200) {
        print("data data ada ");
        print(hasil.body);
        final data = ceklishFromJson(hasil.body);
       
        log(hasil.body);

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




// final response = await http.get('https://jsonplaceholder.typicode.com/albums/1',headers: {HttpHeaders.authorizationHeader: "Basic your_api_token_here"},);