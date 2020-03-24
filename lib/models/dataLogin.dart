// To parse this JSON data, do
//
//     final dataLogin = dataLoginFromJson(jsonString);

import 'dart:convert';

List<DataLogin> dataLoginFromJson(String str) => List<DataLogin>.from(json.decode(str).map((x) => DataLogin.fromJson(x)));

String dataLoginToJson(List<DataLogin> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataLogin {
    String userId;
    String userName;
    String userPassword;
    String userEmail;
    dynamic userPicture;
    String userStatus;

    DataLogin({
        this.userId,
        this.userName,
        this.userPassword,
        this.userEmail,
        this.userPicture,
        this.userStatus,
    });

    factory DataLogin.fromJson(Map<String, dynamic> json) => DataLogin(
        userId: json["user_id"],
        userName: json["user_name"],
        userPassword: json["user_password"],
        userEmail: json["user_email"],
        userPicture: json["user_picture"],
        userStatus: json["user_status"],
    );

    Map<String, dynamic> toJson() => {
        "user_id": userId,
        "user_name": userName,
        "user_password": userPassword,
        "user_email": userEmail,
        "user_picture": userPicture,
        "user_status": userStatus,
    };
}
