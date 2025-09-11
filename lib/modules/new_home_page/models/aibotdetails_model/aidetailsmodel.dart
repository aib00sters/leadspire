import 'package:meta/meta.dart';
import 'dart:convert';

class BotdetailsModel {
    List<Aidetail> aidetails;

    BotdetailsModel({
        required this.aidetails,
    });

    BotdetailsModel copyWith({
        List<Aidetail>? aidetails,
    }) => 
        BotdetailsModel(
            aidetails: aidetails ?? this.aidetails,
        );

    factory BotdetailsModel.fromRawJson(String str) => BotdetailsModel.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory BotdetailsModel.fromJson(Map<String, dynamic> json) => BotdetailsModel(
        aidetails: List<Aidetail>.from(json["aidetails"].map((x) => Aidetail.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "aidetails": List<dynamic>.from(aidetails.map((x) => x.toJson())),
    };
}

class Aidetail {
    String botname;
    String threadId;
    String assistantId;
    String botimage;
    String botid;
    String userid;
    String botdescription;

    Aidetail({
        required this.botname,
        required this.threadId,
        required this.assistantId,
        required this.botimage,
        required this.botid,
        required this.userid,
        required this.botdescription,
    });

    Aidetail copyWith({
        String? botname,
        String? threadId,
        String? assistantId,
        String? botimage,
        String? botid,
        String? userid,
        String? botdescription,
    }) => 
        Aidetail(
            botname: botname ?? this.botname,
            threadId: threadId ?? this.threadId,
            assistantId: assistantId ?? this.assistantId,
            botimage: botimage ?? this.botimage,
            botid: botid ?? this.botid,
            userid: userid ?? this.userid,
            botdescription: botdescription ?? this.botdescription,
        );

    factory Aidetail.fromRawJson(String str) => Aidetail.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Aidetail.fromJson(Map<String, dynamic> json) => Aidetail(
        botname: json["botname"],
        threadId: json["thread_id"],
        assistantId: json["assistant_id"],
        botimage: json["botimage"],
        botid: json["botid"],
        userid: json["userid"],
        botdescription: json["botdescription"],
    );

    Map<String, dynamic> toJson() => {
        "botname": botname,
        "thread_id": threadId,
        "assistant_id": assistantId,
        "botimage": botimage,
        "botid": botid,
        "userid": userid,
        "botdescription": botdescription,
    };
}
