import 'package:flutter/material.dart';
import 'package:newsapp/Api.dart';
import 'package:newsapp/Components/drawer.dart';
import 'package:newsapp/Screens/Detail.dart';
import 'package:newsapp/Screens/Login.dart';
import 'package:newsapp/Screens/Profile.dart';
import 'package:newsapp/Screens/headlines.dart';
import 'package:newsapp/Screens/topStories.dart';

import 'package:newsapp/models/Article.dart';

import 'Search.dart';

class HomeScreen extends StatefulWidget {
  
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List>? newsList;
  bool isLoading = true;
  void initState() {
    super.initState();
    // getArticl().then((value) {
  }
  NewsApi client = NewsApi();
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    var _mediaQueryHeight = MediaQuery.of(context).size.height;
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // centerTitle: true,
            iconTheme: IconThemeData(color: Colors.black),
            title: Text(
              'NewsApp',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            // leading: IconButton(
            //     onPressed: () {},
            //     icon: Icon(
            //       Icons.menu,
            //       color: Colors.black,
            //     )),
            bottom: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text(
                      'Top Stories',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Headlines',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Popular News',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Sports News',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ]),
            actions: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showSearch(
                          context: context,
                          delegate: CustomSearchDelegation(),
                        );
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const profile()),
                        );
                      },
                      icon: Icon(
                        Icons.account_circle_sharp,
                        color: Colors.black,
                      )),
                ],
              )
            ],
          ),
          drawer: drawer(),
          body: TabBarView(
            children: [
              topStories(),
              HeadingBox(),
              DetailScreen(),
              Center(
                child: FutureBuilder(
        future: client.getArticle(),
        builder:
            (BuildContext context, AsyncSnapshot<List<Articles>> snapshot) {
          if (snapshot.hasData) {
            List<Articles>? articles = snapshot.data;
            return ListView.builder(
                itemCount: articles?.length,
                itemBuilder: (context, index) => ListTile(
                  title: Text(articles![index].title),
                ));
          }
        },
      ),
   
              ),
            ],
          ),
        ));
  }
}
