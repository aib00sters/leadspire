import 'package:meta/meta.dart';
import 'dart:convert';

class Historymodel {
  String session;
  List<Message> messages;

  Historymodel({
    required this.session,
    required this.messages,
  });

  Historymodel copyWith({
    String? session,
    List<Message>? messages,
  }) =>
      Historymodel(
        session: session ?? this.session,
        messages: messages ?? this.messages,
      );

  factory Historymodel.fromRawJson(String str) =>
      Historymodel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Historymodel.fromJson(Map<String, dynamic> json) => Historymodel(
        session: json["session"],
        messages: List<Message>.from(
            json["messages"].map((x) => Message.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "session": session,
        "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
      };
}

class Message {
  String msg;
  int created;
  bool isUserMsg;
  String id;

  Message({
    required this.msg,
    required this.created,
    required this.isUserMsg,
    required this.id,
  });

  Message copyWith({
    String? msg,
    int? created,
    bool? isUserMsg,
    String? id,
  }) =>
      Message(
        msg: msg ?? this.msg,
        created: created ?? this.created,
        isUserMsg: isUserMsg ?? this.isUserMsg,
        id: id ?? this.id,
      );

  factory Message.fromRawJson(String str) => Message.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        msg: json["msg"],
        created: json["created"],
        isUserMsg: json["isUserMsg"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "msg": msg,
        "created": created,
        "isUserMsg": isUserMsg,
        "id": id,
      };
}
