import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart';
import 'package:newsapp/models/Article.dart';

class NewsApi {
  final endPointUrl =
      "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=42503f15036c470a965d0d550779e796";
  Future<List<Articles>> getArticle() async {
    var res = await get(Uri.parse(endPointUrl));
    var data = jsonDecode(res.body);
    // print(data);

//     print(jsonDecode(res.body));

    if (res.statusCode == 200 || res.statusCode == 201) {
      Map<String, dynamic> json = data;

      List<dynamic> body = json['articles'];
      List<Articles> articles =
          body.map((dynamic item) => Articles.fromJson(item)).toList() ;
      
      return articles;
    } 
    else {
      throw ("Can't get the Article");
    }
  }
}
// Future<dynamic> getNews() async {
//   Uri uri = Uri.parse(
//       "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=42503f15036c470a965d0d550779e796");
//   final response = await http.get(uri);
//   if (response.statusCode == 200 || response.statusCode == 201) {
//    Map<String, dynamic> map = jsonDecode(response.body);

//   List _articalLists = map['articles'];
//   // List<NewsApiModel> newsList = _articalLists.map((jsonData)=> NewsApiModel.fromJson(jsonData)).toList();
//   // return newsList;
//   }
//   else {
//     print('error');
//   }   
// }