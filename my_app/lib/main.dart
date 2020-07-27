import 'package:flutter/material.dart';
import 'package:my_app/routes/sign_in_routes.dart';
import 'package:my_app/routes/sign_up_routes.dart';
import 'package:my_app/routes/timeline_route.dart';

import 'root.dart';
import 'root_2.dart';

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
      initialRoute: '/sign_in',
      routes: <String, WidgetBuilder>{
        //'/home': (BuildContext context) => Home(),
        '/home': (BuildContext context) => RootWidget(),
        '/talk': (BuildContext context) => RootWidget_2(),
        '/timeline': (BuildContext context) => Timeline(),
        '/sign_in': (BuildContext context) => sign_in(),
        '/sign_up': (BuildContext context) => sign_up(),
        //"/my_page": (BuildContext context) => My_page(),
      },
    );
  }
}
