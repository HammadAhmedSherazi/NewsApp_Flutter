import 'package:flutter/material.dart';
import 'package:newsapp/Api.dart';
import 'package:newsapp/Screens/Login.dart';
import 'package:newsapp/Screens/topStories.dart';
import 'package:newsapp/lib/Api.dart';
import 'package:newsapp/models/Article.dart';

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

  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // centerTitle: true,
            title: Text(
              'NewsApp',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                )),
            bottom: TabBar(
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                tabs: [
                  Tab(
                    child: Text('Top Stories', textAlign: TextAlign.justify,),
                  ),
                  Tab(
                    child: Text('Headlines News' , textAlign: TextAlign.justify,),
                  ),
                  Tab(
                    child: Text('Popular News' , textAlign: TextAlign.justify,),
                  ),
                  Tab(
                    child: Text('Sports News' , textAlign: TextAlign.justify,),
                  ),
                ]),
            actions: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.account_circle_sharp,
                        color: Colors.black,
                      )),
                ],
              )
            ],
          ),
          body: TabBarView(
            children: [
               topStories(),
              

              Center(
                child:
                    ElevatedButton(onPressed: () {}, child: Text('press it')),
              ),
              Center(
                child: Text('Popular News'),
              ),
              Center(
                child: Text('Sports News'),
              ),
            ],
          ),
        ));
  }
}

