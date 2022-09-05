// To parse this JSON data, do
//
//     final beneficiaryDonation = beneficiaryDonationFromJson(jsonString);

import 'dart:convert';

List<BeneficiaryDonation> beneficiaryDonationFromJson(String str) => List<BeneficiaryDonation>.from(json.decode(str).map((x) => BeneficiaryDonation.fromJson(x)));

String beneficiaryDonationToJson(List<BeneficiaryDonation> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BeneficiaryDonation {
    BeneficiaryDonation({
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
        required this.pivot,
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
    Pivot pivot;

    factory BeneficiaryDonation.fromJson(Map<String, dynamic> json) => BeneficiaryDonation(
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
        pivot: Pivot.fromJson(json["pivot"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "item": item,
        "category_id": categoryId,
        "institution_id": institutionId,
        "donor_id": donorId,
        "donated_at": donatedAt.toIso8601String(),
        "status": status,
        "received_at": receivedAt.toIso8601String(),
        "delivered_at": deliveredAt,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "pivot": pivot.toJson(),
    };
}

class Pivot {
    Pivot({
        required this.beneficiaryId,
        required this.donationId,
    });

    int beneficiaryId;
    int donationId;

    factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        beneficiaryId: json["beneficiary_id"],
        donationId: json["donation_id"],
    );

    Map<String, dynamic> toJson() => {
        "beneficiary_id": beneficiaryId,
        "donation_id": donationId,
    };
}