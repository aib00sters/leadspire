import 'package:meta/meta.dart';
import 'dart:convert';

class MessagedataModel {
    String message;
    bool isUser;
    int createdAt;
    String id;
    String question;

    MessagedataModel({
        required this.message,
        required this.isUser,
        required this.createdAt,
        required this.id,
        required this.question,
    });

    MessagedataModel copyWith({
        String? message,
        bool? isUser,
        int? createdAt,
        String? id,
        String? question,
    }) => 
        MessagedataModel(
            message: message ?? this.message,
            isUser: isUser ?? this.isUser,
            createdAt: createdAt ?? this.createdAt,
            id: id ?? this.id,
            question: question ?? this.question,
        );

    factory MessagedataModel.fromRawJson(String str) => MessagedataModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory MessagedataModel.fromJson(Map<String, dynamic> json) => MessagedataModel(
        message: json["message"],
        isUser: json["is_user"],
        createdAt: json["created_at"],
        id: json["id"],
        question: json["question"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "is_user": isUser,
        "created_at": createdAt,
        "id": id,
        "question": question,
    };
}
