// To parse this JSON data, do
//
//     final newsfeed = newsfeedFromJson(jsonString);

import 'dart:convert';

Newsfeed newsfeedFromJson(String str) => Newsfeed.fromJson(json.decode(str));

String newsfeedToJson(Newsfeed data) => json.encode(data.toJson());

class Newsfeed {
  Newsfeed({
    this.data,
  });

  List<Content>? data;

  factory Newsfeed.fromJson(Map<String, dynamic> json) => Newsfeed(
        data: json["data"] == null
            ? null
            : List<Content>.from(json["data"].map((x) => Content.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Content {
  Content({
    this.id,
    this.image,
    this.likes,
    this.tags,
    this.text,
    this.publishDate,
    this.owner,
  });

  String? id;
  String? image;
  int? likes;
  List<String>? tags;
  String? text;
  DateTime? publishDate;
  Owner? owner;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        id: json["id"] ?? '',
        image: json["image"] ?? '',
        likes: json["likes"] ?? '',
        tags: json["tags"] == null
            ? null
            : List<String>.from(json["tags"].map((x) => x)),
        text: json["text"] ?? '',
        publishDate: json["publishDate"] == null
            ? null
            : DateTime.parse(json["publishDate"]),
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? '',
        "image": image ?? '',
        "likes": likes ?? '',
        "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x)),
        "text": text ?? '',
        "publishDate":
            publishDate == null ? null : publishDate!.toIso8601String(),
        "owner": owner == null ? null : owner!.toJson(),
      };
}

class Owner {
  Owner({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.picture,
  });

  String? id;
  String? title;
  String? firstName;
  String? lastName;
  String? picture;

  factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        id: json["id"] ?? '',
        title: json["title"] ?? '',
        firstName: json["firstName"] ?? '',
        lastName: json["lastName"] ?? '',
        picture: json["picture"] ?? '',
      );

  Map<String, dynamic> toJson() => {
        "id": id ?? '',
        "title": title ?? '',
        "firstName": firstName ?? '',
        "lastName": lastName ?? '',
        "picture": picture ?? '',
      };
}
