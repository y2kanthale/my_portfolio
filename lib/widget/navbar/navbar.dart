import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'package:my_portfolio/widget/navbar/logo.dart';
import 'package:my_portfolio/widget/navbar/nav_button.dart';
import 'package:my_portfolio/widget/responsive_widget.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key key}) : super(key: key);
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
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Y2kLogo(),
            // Row(
            //   children: navButtons(),
            // )
        ],
      ),
    );
  }
}