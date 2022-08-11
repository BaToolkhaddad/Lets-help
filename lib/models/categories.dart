// To parse this JSON data, do
//
//     final categories = categoriesFromMap(jsonString);

import 'dart:convert';

import 'package:flutter/cupertino.dart';

class Categories{
  Categories({
    this.id,
    this.name,
    this.icon,
  });

  int? id;
  String? name;
  String? icon;


  bool operator ==(other) {
    return (other is Categories) &&
        other.id== id &&
        other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;



  factory Categories.fromJson(String str) => Categories.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Categories.fromMap(Map<String, dynamic> json) => Categories(
    id: json["id"],
    name: json["name"],
    icon: json["icon"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "icon": icon,
  };
}
