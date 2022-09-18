import 'package:flutter/material.dart';

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
                Image.network("#"),
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
                          )
                        ],
                  ),)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
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
