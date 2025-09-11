import 'package:meta/meta.dart';
import 'dart:convert';

class CategoriesDetailsModel {
    List<Categorydatum> categorydata;

    CategoriesDetailsModel({
        required this.categorydata,
    });

    CategoriesDetailsModel copyWith({
        List<Categorydatum>? categorydata,
    }) => 
        CategoriesDetailsModel(
            categorydata: categorydata ?? this.categorydata,
        );

    factory CategoriesDetailsModel.fromRawJson(String str) => CategoriesDetailsModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory CategoriesDetailsModel.fromJson(Map<String, dynamic> json) => CategoriesDetailsModel(
        categorydata: List<Categorydatum>.from(json["categorydata"].map((x) => Categorydatum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "categorydata": List<dynamic>.from(categorydata.map((x) => x.toJson())),
    };
}

class Categorydatum {
    String catId;
    String catName;
    String imageUrl;

    Categorydatum({
        required this.catId,
        required this.catName,
        required this.imageUrl,
    });

    Categorydatum copyWith({
        String? catId,
        String? catName,
        String? imageUrl,
    }) => 
        Categorydatum(
            catId: catId ?? this.catId,
            catName: catName ?? this.catName,
            imageUrl: imageUrl ?? this.imageUrl,
        );

    factory Categorydatum.fromRawJson(String str) => Categorydatum.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Categorydatum.fromJson(Map<String, dynamic> json) => Categorydatum(
        catId: json["catId"],
        catName: json["catName"],
        imageUrl: json["imageUrl"],
    );

    Map<String, dynamic> toJson() => {
        "catId": catId,
        "catName": catName,
        "imageUrl": imageUrl,
    };
}
