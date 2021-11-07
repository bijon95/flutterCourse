// To parse this JSON data, do
//
//     final news = newsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<News> newsFromJson(String str) => List<News>.from(json.decode(str).map((x) => News.fromJson(x)));

String newsToJson(List<News> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class News {
  News({
    required this.source,
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  Source source;
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  DateTime publishedAt;
  String content;

  factory News.fromJson(Map<String, dynamic> json) => News(
    source: Source.fromJson(json["source"]),
    author: json["author"] == null ? " " : json["author"],
    title: json["title"],
    description: json["description"],
    url: json["url"],
    urlToImage: json["urlToImage"] == null ? " " : json["urlToImage"],
    publishedAt: DateTime.parse(json["publishedAt"]),
    content: json["content"] == null ? " " : json["content"],
  );

  Map<String, dynamic> toJson() => {
    "source": source.toJson(),
    "author": author == null ? " " : author,
    "title": title,
    "description": description,
    "url": url,
    "urlToImage": urlToImage == null ? " " : urlToImage,
    "publishedAt": publishedAt.toIso8601String(),
    "content": content == null ? " " : content,
  };
}

class Source {
  Source({
    required this.id,
    required this.name,
  });

  String id;
  String name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"] == null ? " " : json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? " " : id,
    "name": name,
  };
}
