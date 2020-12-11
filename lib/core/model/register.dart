// To parse this JSON data, do
//
//     final resregis = resregisFromJson(jsonString);

import 'dart:convert';

Resregis resregisFromJson(String str) => Resregis.fromJson(json.decode(str));

String resregisToJson(Resregis data) => json.encode(data.toJson());

class Resregis {
    Resregis({
        this.statusCode,
        this.message,
        this.errorMessage,
        this.data,
    });

    int statusCode;
    String message;
    dynamic errorMessage;
    dynamic data;

    factory Resregis.fromJson(Map<String, dynamic> json) => Resregis(
        statusCode: json["statusCode"],
        message: json["message"],
        errorMessage: json["errorMessage"],
        data: json["data"],
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "errorMessage": errorMessage,
        "data": data,
    };
}
