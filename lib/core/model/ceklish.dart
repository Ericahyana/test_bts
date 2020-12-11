// To parse this JSON data, do
//
//     final ceklish = ceklishFromJson(jsonString);

import 'dart:convert';

Ceklish ceklishFromJson(String str) => Ceklish.fromJson(json.decode(str));

String ceklishToJson(Ceklish data) => json.encode(data.toJson());

class Ceklish {
    Ceklish({
        this.statusCode,
        this.message,
        this.errorMessage,
        this.data,
    });

    int statusCode;
    String message;
    dynamic errorMessage;
    List<Datum> data;

    factory Ceklish.fromJson(Map<String, dynamic> json) => Ceklish(
        statusCode: json["statusCode"],
        message: json["message"],
        errorMessage: json["errorMessage"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "message": message,
        "errorMessage": errorMessage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.name,
        this.items,
        this.checklistCompletionStatus,
    });

    int id;
    String name;
    List<Item> items;
    bool checklistCompletionStatus;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        checklistCompletionStatus: json["checklistCompletionStatus"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toJson())),
        "checklistCompletionStatus": checklistCompletionStatus,
    };
}

class Item {
    Item({
        this.id,
        this.name,
        this.itemCompletionStatus,
    });

    int id;
    String name;
    bool itemCompletionStatus;

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        name: json["name"] == null ? null : json["name"],
        itemCompletionStatus: json["itemCompletionStatus"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name == null ? null : name,
        "itemCompletionStatus": itemCompletionStatus,
    };
}
