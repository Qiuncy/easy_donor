// To parse this JSON data, do
//
//     final beneficiaryCategory = beneficiaryCategoryFromJson(jsonString);

import 'dart:convert';

List<BeneficiaryCategory> beneficiaryCategoryFromJson(String str) => List<BeneficiaryCategory>.from(json.decode(str).map((x) => BeneficiaryCategory.fromJson(x)));

String beneficiaryCategoryToJson(List<BeneficiaryCategory> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BeneficiaryCategory {
    BeneficiaryCategory({
        required this.id,
        required this.name,
        required this.description,
        required this.createdAt,
        required this.updatedAt,
    });

    int id;
    String name;
    String description;
    DateTime createdAt;
    DateTime updatedAt;

    factory BeneficiaryCategory.fromJson(Map<String, dynamic> json) => BeneficiaryCategory(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}


