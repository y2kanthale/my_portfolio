import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:my_portfolio/widget/responsive_widget.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({Key key}) : super(key: key);
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: Colors.deepOrange,
//            borderRadius: BorderRadius.circular(40),
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("y2k.jpg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  get profileData => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        "Hi there! My name is",
        textScaleFactor: 2,
        style: TextStyle(color: Colors.orange),
      ),
      Text(
        "Yogesh \nKanthale",
        textScaleFactor: 5,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        "A Frontend Developer, UX Designer & Beginner in Flutter web development.\n"
        "I also want to be a youtuber and start a youtube channel\n"
        "where I can make videos on tutorials, talk about diffrent technologies\n"
        "and help community to grow",
        softWrap: true,
        textScaleFactor: 1.2,
        style: TextStyle(color: Colors.white60, height:1.5),
      ),
      SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
            width: 20,
          ),
          RaisedButton(
            shape: StadiumBorder(),
            child: Text("Dribble"),
            color: Colors.red,
            onPressed: () {
              html.window.open(
                  "https://dribbble.com/y2kanthale", "Yogesh Kanthale Dribbble");
            },
            padding: EdgeInsets.all(10),
          ),
          SizedBox(
            width: 20,
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
          // OutlineButton(
          //   borderSide: BorderSide(
          //     color: Colors.red,
          //   ),
          //   shape: StadiumBorder(),
          //   child: Text("Say Hi!"),
          //   color: Colors.red,
          //   onPressed: () {
          //     html.window.open("", "Yogesh Kanthale");
          //   },
          //   padding: EdgeInsets.all(10),
          // )
        ],
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[profileImage(context), profileData],
      ),
      smallScreen: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          profileImage(context),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          profileData
        ],
      ),
    );
  }
}
