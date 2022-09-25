import 'dart:core';

import "package:newsapp/models/Source.dart";

class Articles {
  
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publish;
  String content;

  Articles(
      {
      
      required this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publish,
      required this.content});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      url: json['url'] as String,
      urlToImage: json['urlToImage'] as String,
      publish: json['publish'] as String,
      content: json['content'] as String,
      
    );
  }
}



