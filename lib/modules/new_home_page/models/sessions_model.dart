import 'package:meta/meta.dart';
import 'dart:convert';

class SessionModel {
    List<SessionDetail> sessionDetails;

    SessionModel({
        required this.sessionDetails,
    });

    SessionModel copyWith({
        List<SessionDetail>? sessionDetails,
    }) => 
        SessionModel(
            sessionDetails: sessionDetails ?? this.sessionDetails,
        );

    factory SessionModel.fromRawJson(String str) => SessionModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SessionModel.fromJson(Map<String, dynamic> json) => SessionModel(
        sessionDetails: List<SessionDetail>.from(json["sessionDetails"].map((x) => SessionDetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "sessionDetails": List<dynamic>.from(sessionDetails.map((x) => x.toJson())),
    };
}

class SessionDetail {
    String date;
    String loginId;
    String sessionId;
    String time;

    SessionDetail({
        required this.date,
        required this.loginId,
        required this.sessionId,
        required this.time,
    });

    SessionDetail copyWith({
        String? date,
        String? loginId,
        String? sessionId,
        String? time,
    }) => 
        SessionDetail(
            date: date ?? this.date,
            loginId: loginId ?? this.loginId,
            sessionId: sessionId ?? this.sessionId,
            time: time ?? this.time,
        );

    factory SessionDetail.fromRawJson(String str) => SessionDetail.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory SessionDetail.fromJson(Map<String, dynamic> json) => SessionDetail(
        date: json["date"],
        loginId: json["loginId"],
        sessionId: json["sessionId"],
        time: json["time"],
    );

    Map<String, dynamic> toJson() => {
        "date": date,
        "loginId": loginId,
        "sessionId": sessionId,
        "time": time,
    };
}
