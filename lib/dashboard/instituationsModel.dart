// To parse this JSON data, do
//
//     final institution = institutionFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Institution> institutionFromJson(String str) => List<Institution>.from(json.decode(str).map((x) => Institution.fromJson(x)));

String institutionToJson(List<Institution> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Institution {
    Institution({
        required this.id,
        required this.name,
        required this.email,
        required this.website,
        required this.phoneNumber,
        required this.address,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String name;
    String email;
    String website;
    String phoneNumber;
    String address;
    String description;
    DateTime createdAt;
    DateTime updatedAt;

    factory Institution.fromJson(Map<String, dynamic> json) => Institution(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        website: json["website"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "website": website,
        "phone_number": phoneNumber,
        "address": address,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
