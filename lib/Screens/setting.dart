import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Home.dart';

class settingBox extends StatefulWidget {
  const settingBox({Key? key}) : super(key: key);

  @override
  State<settingBox> createState() => _settingBoxState();
}

class _settingBoxState extends State<settingBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 10),
        child: ListView(
          children: [
            Text(
              "Setting",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Account",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            options("Change Password"),
            options("Content Setting"),
            options("Social"),
            options("Language"),
            options("Privacy & Setting"),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.volume_down,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  "Notifications",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Divider(
              height: 15,
              thickness: 2,
            ),
            SizedBox(
              height: 10.0,
            ),
            notificationOtp("New for you", true),
            notificationOtp("Account activity", true),
            notificationOtp("Opportunity", false),
            Center(
              
              child: OutlinedButton(
                
                onPressed: (){}, 
                child:Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    "SIGN OUT",
                    style: TextStyle(
                      fontSize: 16,
                      letterSpacing: 2.2,
                      color: Colors.black
                    ),
                  ),
                )
                ),
            )
          ],
        ),
      ),
    );
  }

  Row notificationOtp(String txt, bool isActive) {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                txt,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600],
                ),
              ),
              Transform.scale(
                scale: 0.7,
                child: CupertinoSwitch(value: isActive , onChanged: (bool val)=>{},))
            ],
          );
  }

  GestureDetector options(String txt) {
    return GestureDetector(
            onTap: () {
              // showDialog(
              //     context: context,
              //     builder: (BuildContext context) {
              //       return AlertDialog(
              //         title: Text("Change Password"),
              //         content: ListView(
              //           children: [
              //             Text("Option 1"),
              //             Text("Option 2"),
              //             Text("Option 3"),
              //           ],
              //         ),
              //         actions: [
              //           ElevatedButton(
              //             onPressed: () {
              //               Navigator.of(context).pop();
              //             },
              //             child: null,
              //           )
              //         ],
              //       );
              //     });
            
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  txt,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey[600],
                    ))
              ],
            ),
          );
  }
}
