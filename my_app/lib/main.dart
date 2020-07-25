import 'package:flutter/material.dart';
import 'package:my_app/routes/home_route.dart';
import 'package:my_app/routes/talk_route.dart';
import 'package:my_app/routes/timeline_route.dart';
import 'root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fuller Demo',
      debugShowCheckedModeBanner: false,
      home: RootWidget(),
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => Home(),
        "/talk": (BuildContext context) => Talk(),
        "/timeline": (BuildContext context) => Timeline(),
//        "/sign_in": (BuildContext context) => Sign_in(),
//        "/sign_up": (BuildContext context) => Sign_up(),
//        "/my_page": (BuildContext context) => My_page(),
      },
    );
  }
}
