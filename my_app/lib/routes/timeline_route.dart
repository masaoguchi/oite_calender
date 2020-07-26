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
          new FlatButton(
            child: const Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed("/talk");
            },
          ),
        ],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(10),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: Text(
              "学習中の参考書",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 90,
                    height: 150,
                    child: Text(
                      "Card1",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 90,
                    height: 150,
                    child: Text(
                      "Card2",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 90,
                    height: 150,
                    child: Text(
                      "Card3",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
          ),
          Container(
            margin: const EdgeInsets.all(5),
            child: Text(
              "先輩たちの勉強をチェック！",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Card(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 90,
                    height: 150,
                    child: Text(
                      "Card1",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 90,
                    height: 150,
                    child: Text(
                      "Card2",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 90,
                    height: 150,
                    child: Text(
                      "Card3",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
