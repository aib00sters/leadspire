import 'dart:convert';

class Newservicemodel {
    String? id;
    Offer? offer;
    List<IceServer>? iceServers;
    String? sessionId;

    Newservicemodel({
        this.id,
        this.offer,
        this.iceServers,
        this.sessionId,
    });

    Newservicemodel copyWith({
        String? id,
        Offer? offer,
        List<IceServer>? iceServers,
        String? sessionId,
    }) => 
        Newservicemodel(
            id: id ?? this.id,
            offer: offer ?? this.offer,
            iceServers: iceServers ?? this.iceServers,
            sessionId: sessionId ?? this.sessionId,
        );

    factory Newservicemodel.fromRawJson(String str) => Newservicemodel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Newservicemodel.fromJson(Map<String, dynamic> json) => Newservicemodel(
        id: json["id"],
        offer: json["offer"] == null ? null : Offer.fromJson(json["offer"]),
        iceServers: json["ice_servers"] == null ? [] : List<IceServer>.from(json["ice_servers"]!.map((x) => IceServer.fromJson(x))),
        sessionId: json["session_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "offer": offer?.toJson(),
        "ice_servers": iceServers == null ? [] : List<dynamic>.from(iceServers!.map((x) => x.toJson())),
        "session_id": sessionId,
    };
}

class IceServer {
    dynamic urls;
    String? username;
    String? credential;

    IceServer({
        this.urls,
        this.username,
        this.credential,
    });

    IceServer copyWith({
        dynamic urls,
        String? username,
        String? credential,
    }) => 
        IceServer(
            urls: urls ?? this.urls,
            username: username ?? this.username,
            credential: credential ?? this.credential,
        );

    factory IceServer.fromRawJson(String str) => IceServer.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory IceServer.fromJson(Map<String, dynamic> json) => IceServer(
        urls: json["urls"],
        username: json["username"],
        credential: json["credential"],
    );

    Map<String, dynamic> toJson() => {
        "urls": urls,
        "username": username,
        "credential": credential,
    };
}

class Offer {
    String? type;
    String? sdp;

    Offer({
        this.type,
        this.sdp,
    });

    Offer copyWith({
        String? type,
        String? sdp,
    }) => 
        Offer(
            type: type ?? this.type,
            sdp: sdp ?? this.sdp,
        );

    factory Offer.fromRawJson(String str) => Offer.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        type: json["type"],
        sdp: json["sdp"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "sdp": sdp,
    };
}
