// To parse this JSON data, do
//
//     final reqRes = reqResFromJson(jsonString);

import 'dart:convert';

ReqRes reqResFromJson(String str) => ReqRes.fromJson(json.decode(str));

String reqResToJson(ReqRes data) => json.encode(data.toJson());

class ReqRes {
    String greeting;
    List<String> instructions;

    ReqRes({
        required this.greeting,
        required this.instructions,
    });

    factory ReqRes.fromJson(Map<String, dynamic> json) => ReqRes(
        greeting: json["greeting"],
        instructions: List<String>.from(json["instructions"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "greeting": greeting,
        "instructions": List<dynamic>.from(instructions.map((x) => x)),
    };
}
