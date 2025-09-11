import 'package:meta/meta.dart';
import 'dart:convert';

class Responcemodel {
    final String modelResponse;

    Responcemodel({
        required this.modelResponse,
    });

    factory Responcemodel.fromJson(String str) => Responcemodel.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Responcemodel.fromMap(Map<String, dynamic> json) => Responcemodel(
        modelResponse: json["model_response"],
    );

    Map<String, dynamic> toMap() => {
        "model_response": modelResponse,
    };
}
