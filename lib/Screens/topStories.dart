import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/Api.dart';
import 'package:newsapp/models/Article.dart';

import '../Components/posts.dart';

class topStories extends StatefulWidget {
  const topStories({Key? key}) : super(key: key);

  @override
  State<topStories> createState() => _topStoriesState();
}

class _topStoriesState extends State<topStories> {
  NewsApi client = NewsApi();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: FutureBuilder(
      future: client.getArticle(),
      builder: (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
        if (snapshot.hasData) {
          return Center(
            child: Text("Successfully"),
          );
        } else {
          return Center(
            child: Text("Sorry Work not done"),
          );
        }
      },
    ));
  }
}
