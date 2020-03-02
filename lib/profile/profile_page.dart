import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:my_portfolio/widget/navbar/nav_button.dart';
import 'package:my_portfolio/widget/navbar/navbar.dart';
import 'package:my_portfolio/profile/profile_info.dart';
import 'package:my_portfolio/widget/responsive_widget.dart';

class ProfilePage extends StatelessWidget {
  List<Widget> navButtons() => [
        NavButton(
          text: "about",
          onPressed: () {
            html.window.open("", "");
          },
        ),
        NavButton(
          text: "work",
          onPressed: () {
            html.window.open("", "");
          },
        ),
        NavButton(
          text: "contact",
          onPressed: () {
            html.window.open("", "");
          },
        ),
      ];

  const ProfilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.black,
        ),
        drawer: ResponsiveWidget.isSmallScreen(context)?Drawer(
          child: ListView(
            padding: const EdgeInsets.all(20),
            // children: navButtons(),
            children: <Widget>[
              RaisedButton(
            shape: StadiumBorder(),
            child: Text("Linkedin"),
            color: Colors.red,
            onPressed: () {
              html.window.open(
                  "https://www.linkedin.com/in/yogeshkanthale/", "Yogesh Kanthale Linkedin");
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Twitter"),
            color: Colors.red,
            onPressed: () {
              html.window.open(
                  "https://twitter.com/y2kanthale", "Yogesh Kanthale Twitter");
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Github"),
            color: Colors.red,
            onPressed: () {
              html.window.open(
                  "https://github.com/y2kanthale/", "Yogesh Kanthale Github");
            },
            padding: EdgeInsets.all(10),
          ),
            ],
          ),
        )
    : null,
    body: SingleChildScrollView(
      child: AnimatedPadding(
        duration: Duration(seconds: 1),
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
        child: ResponsiveWidget(
          largeScreen: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              NavBar(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              ProfileInfo(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              // SocialInfo(),
            ],
          ),),
      ),
    ),
    ),
    );
  }
}