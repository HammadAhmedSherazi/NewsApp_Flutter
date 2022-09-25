import 'package:flutter/material.dart';
import 'package:newsapp/Screens/Home.dart';

class DetailScreen extends StatefulWidget {
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network("https://media.istockphoto.com/photos/photography-camera-lens-concept-picture-id922656500?k=20&m=922656500&s=612x612&w=0&h=buqn4KK7qm6TPy9EFtM7jSEhKVV7UdkxdLbxEL25UIQ="),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0)
                  ,child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("News Heading", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),)
                          ,SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              Row(
                                  children: [
                                    Icon(Icons.person, color: Colors.grey,),
                                    Text("Author | ", style: TextStyle(fontSize: 12.0, color: Colors.grey),),
                                    Icon(Icons.sports_bar, color: Colors.grey,),
                                    Text("Category | ", style: TextStyle(fontSize: 12.0, color: Colors.grey),),
                                    Icon(Icons.date_range,color: Colors.grey,),
                                    Text("Date", style: TextStyle(fontSize: 12.0, color: Colors.grey),),
                                  ],
                                  
                              ),
                              IconButton(onPressed: (){}, icon: Icon(Icons.favorite, color: Colors.grey,))
                            ],
                          ),
                          Text("The new panel will be similar to the existing panel arrangements and will include a second category for prefabricated all-in-one data centres and modular data centres.The new panel will launch in early 2023 for federal, state and local government agencies.", style: TextStyle(
                           fontSize: 14.0
                          ), )
                        ],
                  ),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: IconButton(
                onPressed: () {
                 Navigator.push(
                                context,
            MaterialPageRoute(builder: (context) =>  HomeScreen()),
        );
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                )),
          )
        ],
      ),
    );
  }
}
