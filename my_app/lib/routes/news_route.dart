import 'package:flutter/material.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ニュース'),
        backgroundColor: Colors.green,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.settings),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Text('ニュース'),
      ),
    );
  }
}