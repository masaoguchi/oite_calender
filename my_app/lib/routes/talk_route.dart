import 'package:flutter/material.dart';
import 'tile.dart';

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('トーク'),
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
        child: Text('参考書登録'),
      ),
    );
  }
}