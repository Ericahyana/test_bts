// To parse this JSON data, do
//
//     final User = UserFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
    User({
          this.password,
          this.username,
    });

  String password;
  String username;


    factory User.fromJson(Map<String, dynamic> json) => User(
        password: json["password"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "password": password,
        "username": username,
        
    };
}
