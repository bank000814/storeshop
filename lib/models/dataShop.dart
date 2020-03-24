// To parse this JSON data, do
//
//     final dataShop = dataShopFromJson(jsonString);

import 'dart:convert';

List<DataShop> dataShopFromJson(String str) => List<DataShop>.from(json.decode(str).map((x) => DataShop.fromJson(x)));

String dataShopToJson(List<DataShop> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class DataShop {
    String shopsId;
    String shopsName;
    String shopsLatitube;
    String shopsLongtitube;
    String shopsPicture;
    String shopsType;
    String shopsAddress;

    DataShop({
        this.shopsId,
        this.shopsName,
        this.shopsLatitube,
        this.shopsLongtitube,
        this.shopsPicture,
        this.shopsType,
        this.shopsAddress,
    });

    factory DataShop.fromJson(Map<String, dynamic> json) => DataShop(
        shopsId: json["shops_id"],
        shopsName: json["shops_name"],
        shopsLatitube: json["shops_latitube"],
        shopsLongtitube: json["shops_longtitube"],
        shopsPicture: json["shops_picture"],
        shopsType: json["shops_type"],
        shopsAddress: json["shops_address"],
    );

    Map<String, dynamic> toJson() => {
        "shops_id": shopsId,
        "shops_name": shopsName,
        "shops_latitube": shopsLatitube,
        "shops_longtitube": shopsLongtitube,
        "shops_picture": shopsPicture,
        "shops_type": shopsType,
        "shops_address": shopsAddress,
    };
}
