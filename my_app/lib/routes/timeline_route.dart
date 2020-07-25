import 'package:flutter/material.dart';

class Timeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('参考書一覧'),
        backgroundColor: Colors.green,
//        leading: Padding(
//          padding: const EdgeInsets.all(8.0),
//          child: Icon(Icons.settings),
//        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        child: Text("参考書一覧"),
      ),
    );
  }
}
