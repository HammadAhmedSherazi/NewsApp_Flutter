import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/Api.dart';
import 'package:newsapp/models/Article.dart';
import 'package:newsapp/Components/posts.dart';

import '../Components/posts.dart';

class topStories extends StatefulWidget {
  const topStories({Key? key}) : super(key: key);

  @override
  State<topStories> createState() => _topStoriesState();
}

class _topStoriesState extends State<topStories> {
  

  @override
  Widget build(BuildContext context) {
    var _mediaWidth = MediaQuery.of(context).size.width;
    var _mediaHeight = MediaQuery.of(context).size.height;

    return Center(
      child:  Text('hjhjh'));
  }
}

Widget post(x) {
  return Card(
    elevation: 1.0,
    margin: EdgeInsets.only(bottom: 10.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110.0,
            height: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('./lib/assets/images/img1.jpg'),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "News Title",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  // SizedBox(
                  //   height: x * 0.09,
                  // ),

                  Text(
                    "Some briefly description ... ",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "2:30pm",
            style: TextStyle(fontSize: 10.0, color: Colors.grey),
          )
        ],
      ),
    ),
  );
}
