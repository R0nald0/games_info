import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

extension PlyaGame on BuildContext{
   ThemeData get theme => Theme.of(this);
   
   double parcentHeight(double  parcent) => MediaQuery.of(this).size.height * parcent;
   double parcentWidth(double  parcent) => MediaQuery.of(this).size.width * parcent;
   double shortestSide(double  parcent) => MediaQuery.of(this).size.shortestSide * parcent;
    
    IconData getIconsPlatform(int platform){
   
   return switch(platform){
        1  => FontAwesomeIcons.windows,
        2  => FontAwesomeIcons.playstation,
        3 => FontAwesomeIcons.xbox,
        4 => FontAwesomeIcons.applePay,
        5 => FontAwesomeIcons.appStoreIos,
        6 => FontAwesomeIcons.linux,
        7  => FontAwesomeIcons.gamepad,
       8  => FontAwesomeIcons.android,
       14 => FontAwesomeIcons.webflow,
      _ => FontAwesomeIcons.x
    };
  }
}

extension PlayGame on BuildContext{
   
}