
import 'dart:convert';

List<Donations> donationsFromJson(String str) => List<Donations>.from(json.decode(str).map((x) => Donations.fromJson(x)));

String donationsToJson(List<Donations> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Donations {
    Donations({
        required this.id,
        required this.item,
        required this.categoryId,
        required this.institutionId,
        required this.donorId,
        required this.donatedAt,
        required this.status,
        required this.receivedAt,
        required this.deliveredAt,
        required this.createdAt,
        required this.updatedAt,
        required this.institution,
    });

    int id;
    String item;
    int categoryId;
    int institutionId;
    int donorId;
    DateTime donatedAt;
    String status;
    DateTime receivedAt;
    String deliveredAt;
    DateTime createdAt;
    DateTime updatedAt;
    Institution institution;

    factory Donations.fromJson(Map<String, dynamic> json) => Donations(
        id: json["id"],
        item: json["item"],
        categoryId: json["category_id"],
        institutionId: json["institution_id"],
        donorId: json["donor_id"],
        donatedAt: DateTime.parse(json["donated_at"]),
        status: json["status"],
        receivedAt: DateTime.parse(json["received_at"]),
        deliveredAt: json["delivered_at"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        institution: Institution.fromJson(json["institution"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "item": item,
        "category_id": categoryId,
        "institution_id": institutionId,
        "donor_id": donorId,
        "donated_at": donatedAt.toIso8601String(),
        "status": status,
        "received_at": "${receivedAt.year.toString().padLeft(4, '0')}-${receivedAt.month.toString().padLeft(2, '0')}-${receivedAt.day.toString().padLeft(2, '0')}",
        "delivered_at": deliveredAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "institution": institution.toJson(),
    };
}

class Institution {
    Institution({
        required this.id,
        required this.name,
        required this.email,
        required this.website,
        required this.phoneNumber,
        required this.address,
        required this.description,
        required this.picture,
    });

    int id;
    String name;
    String email;
    String website;
    String phoneNumber;
    String address;
    String description;
    String picture;

    factory Institution.fromJson(Map<String, dynamic> json) => Institution(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        website: json["website"],
        phoneNumber: json["phone_number"],
        address: json["address"],
        description: json["description"],
        picture: json["picture"],
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
    };
}
