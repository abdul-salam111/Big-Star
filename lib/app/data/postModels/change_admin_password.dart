// To parse this JSON data, do
//
//     final changeAdminPasswordModel = changeAdminPasswordModelFromJson(jsonString);

import 'dart:convert';

ChangeAdminPasswordModel changeAdminPasswordModelFromJson(String str) => ChangeAdminPasswordModel.fromJson(json.decode(str));

String changeAdminPasswordModelToJson(ChangeAdminPasswordModel data) => json.encode(data.toJson());

class ChangeAdminPasswordModel {
    String? currentPassword;
    String? password;
    String? confirmPassword;

    ChangeAdminPasswordModel({
        this.currentPassword,
        this.password,
        this.confirmPassword,
    });

    factory ChangeAdminPasswordModel.fromJson(Map<String, dynamic> json) => ChangeAdminPasswordModel(
        currentPassword: json["current_password"],
        password: json["password"],
        confirmPassword: json["confirm_password"],
    );

    Map<String, dynamic> toJson() => {
        "current_password": currentPassword,
        "password": password,
        "confirm_password": confirmPassword,
    };
}
