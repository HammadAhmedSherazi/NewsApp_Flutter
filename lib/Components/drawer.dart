import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/Screens/Home.dart';
import 'package:newsapp/Screens/setting.dart';

import '../Screens/Profile.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(80), bottomRight: Radius.circular(60)),
      ),
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          Container(
            width: _mediaQueryWidth * 1.0,
            height: 250.0,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 7, 7, 7),
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(60.0))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png'),
                  radius: 50.0,
                ),
                Text(
                  'Hammad Ahmed',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
    //             ElevatedButton(
    //               onPressed: () {},
    //               child: Text(
    //                 'Logout',
    //                 style: TextStyle(color: Colors.white),
    //                 textAlign: TextAlign.center,
    //               ),
    //               style: ButtonStyle(
                    
    // backgroundColor: MaterialStatePropertyAll<Color>(Colors.green)
    //               ),

                OutlinedButton(onPressed: (){}, child: const Text('Logout'), ),
              
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  HomeScreen()),
  );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.account_box_rounded,
              color: Colors.black,
            ),
            title: const Text('Account'),
            onTap: () {
             Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const profile()),
                        );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.black,
            ),
            title: const Text('Settings'),
            onTap: () {
              Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const settingBox()),
                        );
            },
          ),
        ],
      ),
    );
  }
}
