import 'dart:js';

import 'package:flutter/material.dart';
import 'package:newsapp/Screens/Detail.dart';
import 'package:newsapp/Screens/Profile.dart';
import 'package:newsapp/assets/images/custom_icons_icons.dart';

import '../assets/images/heart_icon_icons.dart';
// import 'package:newsapp/assets/images/heart_icon_icons.dart';

class HeadingBox extends StatefulWidget {
  const HeadingBox({Key? key}) : super(key: key);

  @override
  State<HeadingBox> createState() => _HeadingBoxState();
}

class _HeadingBoxState extends State<HeadingBox> {
  @override
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    var _mediaQueryHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [post(), post(), post()],
      )),
    );
  }
}

Widget post() {
  var context;
  return GestureDetector(
    onTap: () {
      Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DetailScreen()),
);
    },
    child: Card(
      // width: double.infinity,
      elevation: 2.0,
      margin: EdgeInsets.only(bottom: 10.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
          child: Container(
            width: double.infinity,
            height: 210.0,
            // color: Colors.redAccent,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://media.istockphoto.com/photos/photography-camera-lens-concept-picture-id922656500?k=20&m=922656500&s=612x612&w=0&h=buqn4KK7qm6TPy9EFtM7jSEhKVV7UdkxdLbxEL25UIQ='),
                  fit: BoxFit.cover,
                ),
                // color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Container(
            decoration: BoxDecoration(),
            child: ListTile(
              title: Text(
                "Heading",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              subtitle: Text("Some description of news about story...."),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        CustomIcons.favorite_border,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}
