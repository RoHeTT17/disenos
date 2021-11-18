import 'package:disenos/src/routes/routes.dart';
import 'package:flutter/material.dart';

/*import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_design.dart';
import 'package:disenos/screens/scroll_design.dart';*/
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    //Poner el statusBar en blanco
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: "R",
      routes: getScreen()
      /*
      Agregue el archivo routes para mostrar todos los diseños
      initialRoute: "home_design",
      routes: {
        "basic_design"   : (BuildContext context) => BasicDesignScreen(),
        "scroll_design"  : ( _ )                  => ScrollScreen(),
        "home_design"    : ( _ )                  => HomeScreen()
      },*/
    );
  }
}