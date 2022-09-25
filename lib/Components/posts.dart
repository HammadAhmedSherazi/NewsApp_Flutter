import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class cardPost extends StatefulWidget {
  const cardPost({Key? key}) : super(key: key);

  @override
  State<cardPost> createState() => _cardPostState();
}

class _cardPostState extends State<cardPost> {
  @override
  Widget build(BuildContext context) {
     var _mediaWidth = MediaQuery.of(context).size.width;
     var _mediaHeight = MediaQuery.of(context).size.height;
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
                    "Babar Azam batting",
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height:  _mediaHeight * 0.09,
                  ),
                  Text("Read more...", style: TextStyle(fontSize: 10.0, color: Colors.grey,
                  ),)
                ],
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
