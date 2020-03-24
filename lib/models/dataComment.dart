// To parse this JSON data, do
//
//     final dataComment = dataCommentFromJson(jsonString);

import 'dart:convert';

List<DataComment> dataCommentFromJson(String str) => List<DataComment>.from(json.decode(str).map((x) => DataComment.fromJson(x)));

String dataCommentToJson(List<DataComment> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataComment {
    String shopsName;
    String userName;
    String likeLike;
    String commentComment;

    DataComment({
        this.shopsName,
        this.userName,
        this.likeLike,
        this.commentComment,
    });

    factory DataComment.fromJson(Map<String, dynamic> json) => DataComment(
        shopsName: json["shops_name"],
        userName: json["user_name"],
        likeLike: json["like_like"],
        commentComment: json["comment_comment"],
    );

    Map<String, dynamic> toJson() => {
        "shops_name": shopsName,
        "user_name": userName,
        "like_like": likeLike,
        "comment_comment": commentComment,
    };
}
