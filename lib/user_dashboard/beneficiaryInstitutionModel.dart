// To parse this JSON data, do
//
//     final beneficiaryInstitution = beneficiaryInstitutionFromJson(jsonString);

import 'dart:convert';

List<BeneficiaryInstitution> beneficiaryInstitutionFromJson(String str) => List<BeneficiaryInstitution>.from(json.decode(str).map((x) => BeneficiaryInstitution.fromJson(x)));

String beneficiaryInstitutionToJson(List<BeneficiaryInstitution> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BeneficiaryInstitution {
    BeneficiaryInstitution({
        required this.id,
        required this.name,
        required this.email,
        required this.website,
        required this.phoneNumber,
        required this.address,
        required this.description,
        required this.picture,
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
    String picture;
    DateTime createdAt;
    DateTime updatedAt;

    factory BeneficiaryInstitution.fromJson(Map<String, dynamic> json) => BeneficiaryInstitution(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        website: json["website"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        description: json["description"],
        picture: json["picture"],
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
        "picture": picture,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}

class Pivot {
    Pivot({
        required this.beneficiaryId,
        required this.institutionId,
    });

    int beneficiaryId;
    int institutionId;

    factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        beneficiaryId: json["beneficiary_id"],
        institutionId: json["institution_id"],
    );

    Map<String, dynamic> toJson() => {
        "beneficiary_id": beneficiaryId,
        "institution_id": institutionId,
    };
}
