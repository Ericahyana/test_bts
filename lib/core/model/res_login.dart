// To parse this JSON data, do
//
//     final reslogin = resloginFromJson(jsonString);

import 'dart:convert';

Reslogin resloginFromJson(String str) => Reslogin.fromJson(json.decode(str));

String resloginToJson(Reslogin data) => json.encode(data.toJson());

class Reslogin {
    Reslogin({
        this.statusCode,
        this.message,
        this.errorMessage,
        this.data,
    });

    int statusCode;
    String message;
    dynamic errorMessage;
    Data data;

    factory Reslogin.fromJson(Map<String, dynamic> json) => Reslogin(
        statusCode: json["statusCode"],
        message: json["message"],
        errorMessage: json["errorMessage"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "errorMessage": errorMessage,
        "data": data.toJson(),
    };
}

class Data {
    Data({
        this.token,
    });

    String token;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
    };
}
