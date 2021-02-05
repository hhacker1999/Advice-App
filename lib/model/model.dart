

import 'dart:convert';

Advice adviceFromJson(String str) => Advice.fromJson(json.decode(str));

String adviceToJson(Advice data) => json.encode(data.toJson());

class Advice {
    Advice({
        this.slip,
    });

    Slip slip;

    factory Advice.fromJson(Map<String, dynamic> json) => Advice(
        slip: Slip.fromJson(json["slip"]),
    );

    Map<String, dynamic> toJson() => {
        "slip": slip.toJson(),
    };
}

class Slip {
    Slip({
        this.id,
        this.advice,
    });

    int id;
    String advice;

    factory Slip.fromJson(Map<String, dynamic> json) => Slip(
        id: json["id"],
        advice: json["advice"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "advice": advice,
    };
}
