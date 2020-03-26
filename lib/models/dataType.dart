// To parse this JSON data, do
//
//     final dataType = dataTypeFromJson(jsonString);

import 'dart:convert';

List<DataType> dataTypeFromJson(String str) => List<DataType>.from(json.decode(str).map((x) => DataType.fromJson(x)));

String dataTypeToJson(List<DataType> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataType {
    String shoptypeId;
    String shoptypeName;

    DataType({
        this.shoptypeId,
        this.shoptypeName,
    });

    factory DataType.fromJson(Map<String, dynamic> json) => DataType(
        shoptypeId: json["shoptype_id"],
        shoptypeName: json["shoptype_name"],
    );

    Map<String, dynamic> toJson() => {
        "shoptype_id": shoptypeId,
        "shoptype_name": shoptypeName,
    };
}
