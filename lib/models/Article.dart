import 'dart:core';

import "package:newsapp/models/Source.dart";

class Articles {
  Source source;
  var author;
  var title;
  var description;
  var url;
  var urlToImage;
  var publish;
  var content;

  Articles(
      {
      required this.source,
      this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publish,
      this.content});

  factory Articles.fromJson(Map<String, dynamic> json) {
    return Articles(
      source: Source.fromJson(json['source']),
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



