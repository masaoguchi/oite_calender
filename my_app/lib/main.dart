import 'package:flutter/material.dart';
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

    );
  }
}
