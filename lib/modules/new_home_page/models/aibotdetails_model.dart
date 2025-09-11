// To parse this JSON data, do
//
//     final aibotdetailsmodel = aibotdetailsmodelFromJson(jsonString);

import 'dart:convert';

Aibotdetailsmodel aibotdetailsmodelFromJson(String str) =>
    Aibotdetailsmodel.fromJson(json.decode(str));

String aibotdetailsmodelToJson(Aibotdetailsmodel data) =>
    json.encode(data.toJson());

class Aibotdetailsmodel {
  List<Session>? sessions;
  Tokens? tokens;

  Aibotdetailsmodel({
    this.sessions,
    this.tokens,
  });

  factory Aibotdetailsmodel.fromJson(Map<String, dynamic> json) =>
      Aibotdetailsmodel(
        sessions: json["sessions"] == null
            ? []
            : List<Session>.from(
                json["sessions"]!.map((x) => Session.fromJson(x))),
        tokens: json["tokens"] == null ? null : Tokens.fromJson(json["tokens"]),
      );

  Map<String, dynamic> toJson() => {
        "sessions": sessions == null
            ? []
            : List<dynamic>.from(sessions!.map((x) => x.toJson())),
        "tokens": tokens?.toJson(),
      };
}

class Session {
  UaMap? uaMap;
  String? sesId;
  String? createdAt;
  String? updatedAt;

  Session({
    this.uaMap,
    this.sesId,
    this.createdAt,
    this.updatedAt,
  });

  factory Session.fromJson(Map<String, dynamic> json) => Session(
        uaMap: json["ua_map"] == null ? null : UaMap.fromJson(json["ua_map"]),
        sesId: json["ses_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "ua_map": uaMap?.toJson(),
        "ses_id": sesId,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}

class UaMap {
  int? id;
  Assistant? assistant;
  Consumer? consumer;
  int? order;

  UaMap({
    this.id,
    this.assistant,
    this.consumer,
    this.order,
  });

  factory UaMap.fromJson(Map<String, dynamic> json) => UaMap(
        id: json["id"],
        assistant: json["assistant"] == null
            ? null
            : Assistant.fromJson(json["assistant"]),
        consumer: json["consumer"] == null
            ? null
            : Consumer.fromJson(json["consumer"]),
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "assistant": assistant?.toJson(),
        "consumer": consumer?.toJson(),
        "order": order,
      };
}

class Assistant {
  int? id;
  String? code;
  String? name;
  String? expertIn;
  Voice? voice;
  Avatar? avatar;
  bool? isTalking;

  Assistant({
    this.id,
    this.code,
    this.name,
    this.expertIn,
    this.voice,
    this.avatar,
    this.isTalking,
  });

  factory Assistant.fromJson(Map<String, dynamic> json) => Assistant(
        id: json["id"],
        code: json["code"],
        name: json["name"],
        expertIn: json["expert_in"],
        voice: json["voice"] == null ? null : Voice.fromJson(json["voice"]),
        avatar: json["avatar"] == null ? null : Avatar.fromJson(json["avatar"]),
        isTalking: json["is_talking"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "code": code,
        "name": name,
        "expert_in": expertIn,
        "voice": voice?.toJson(),
        "avatar": avatar?.toJson(),
        "is_talking": isTalking,
      };
}

class Avatar {
  int? id;
  String? avatarImg;
  String? avatarVideo;

  Avatar({
    this.id,
    this.avatarImg,
    this.avatarVideo,
  });

  factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
        id: json["id"],
        avatarImg: json["avatar_img"],
        avatarVideo: json["avatar_video"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "avatar_img": avatarImg,
        "avatar_video": avatarVideo,
      };
}

class Voice {
  int? id;
  String? name;
  String? voiceCode;
  String? language;
  dynamic avatarVoice;

  Voice({
    this.id,
    this.name,
    this.voiceCode,
    this.language,
    this.avatarVoice,
  });

  factory Voice.fromJson(Map<String, dynamic> json) => Voice(
        id: json["id"],
        name: json["name"],
        voiceCode: json["voice_code"],
        language: json["language"],
        avatarVoice: json["avatar_voice"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "voice_code": voiceCode,
        "language": language,
        "avatar_voice": avatarVoice,
      };
}

class Consumer {
  int? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  List<dynamic>? groups;

  Consumer({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.groups,
  });

  factory Consumer.fromJson(Map<String, dynamic> json) => Consumer(
        id: json["id"],
        username: json["username"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        groups: json["groups"] == null
            ? []
            : List<dynamic>.from(json["groups"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": username,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "groups":
            groups == null ? [] : List<dynamic>.from(groups!.map((x) => x)),
      };
}

class Tokens {
  String? refresh;
  String? access;

  Tokens({
    this.refresh,
    this.access,
  });

  factory Tokens.fromJson(Map<String, dynamic> json) => Tokens(
        refresh: json["refresh"],
        access: json["access"],
      );

  Map<String, dynamic> toJson() => {
        "refresh": refresh,
        "access": access,
      };
}
