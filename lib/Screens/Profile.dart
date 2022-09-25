import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:newsapp/Components/drawer.dart';
import 'package:newsapp/Screens/Home.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  final _txt = TextEditingController();
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Stack(
                  children: [
                    Container(
                      width: 130.0,
                      height: 130.0,
                      
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png'),
                          ),
                          border: Border.all(
                              width: 4,
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ]),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black,
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context).scaffoldBackgroundColor),
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextBox("Username", "Enter a Username", false),
                    TextBox("Email", "Enter a email", false),
                    TextBox("Password", "Enter a old Password", true),
                    TextBox("Password", "Enter a new Username", true),
                    SizedBox(
                      height: 60.0,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(150, 40),
                          backgroundColor: Color.fromARGB(255, 7, 7, 7),
                        ),
                        child: Text(
                          "Save",
                          style: TextStyle(fontSize: 17),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding TextBox(String labelTxt, String placeholder, bool isPassTxtFiled) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
          // controller: _txt,
          obscureText: isPassTxtFiled ? showPassword: false,
          decoration: InputDecoration(
              hintText: placeholder,
              labelText: labelTxt,
              enabledBorder: UnderlineInputBorder(
                borderSide:
                  BorderSide(width: 3, color: Color.fromARGB(255, 3, 3, 3)),
              ),
              suffixIcon: isPassTxtFiled
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.black,
                      ))
                  : IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        size: 20.0,
                        color: Colors.black,
                      )))),
    );
  }
}
