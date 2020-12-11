// To parse this JSON data, do
//
//     final Regis = RegisFromJson(jsonString);

import 'dart:convert';

Regis regisFromJson(String str) => Regis.fromJson(json.decode(str));

String regisToJson(Regis data) => json.encode(data.toJson());

class Regis {
    Regis({
          this.email,
          this.password,
          this.username,
    });

  String email;
  String password;
  String username;


    factory Regis.fromJson(Map<String, dynamic> json) => Regis(
        email: json["email"],
        password: json["password"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "username": username,
        
    };
}
