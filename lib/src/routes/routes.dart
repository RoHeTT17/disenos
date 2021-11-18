import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_app.dart';
import 'package:disenos/screens/home_design.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getScreen(){

  return <String, WidgetBuilder>{

      'R'      : (BuildContext context) => HomeApp(),
      'basic'  : (BuildContext context) => BasicDesignScreen(),
      'scroll' : (BuildContext context) => ScrollScreen(),
      'blur'   : (BuildContext context) => HomeScreen()

  };

}