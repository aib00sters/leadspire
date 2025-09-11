import 'dart:convert';

class Sessionmodel {
    String? sessionId;

    Sessionmodel({
        this.sessionId,
    });

    Sessionmodel copyWith({
        String? sessionId,
    }) => 
        Sessionmodel(
            sessionId: sessionId ?? this.sessionId,
        );

    factory Sessionmodel.fromRawJson(String str) => Sessionmodel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Sessionmodel.fromJson(Map<String, dynamic> json) => Sessionmodel(
        sessionId: json["session_id"],
    );

    Map<String, dynamic> toJson() => {
        "session_id": sessionId,
    };
}
