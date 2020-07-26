import 'package:flutter/material.dart';

class howToStudyScreen extends StatefulWidget {
  @override
  _howToStudyScreenState createState() => _howToStudyScreenState();
}

class _howToStudyScreenState extends State<howToStudyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          '他の人の勉強法',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              FloatingActionButton(
                child: Icon(
                  Icons.people,
                ),
                backgroundColor: Colors.teal,
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Text(
                  'システム英単語',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Expanded(
                  child: Text(
                    '◯◯ページを◯月△日から★日間で終わらせました！',
                    style: TextStyle(color: Colors.teal),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              FloatingActionButton(
                child: Icon(
                  Icons.people,
                ),
                backgroundColor: Colors.teal,
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Text(
                  'チャート式IA',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Expanded(
                  child: Text(
                    '◯◯ページを◯月△日から★日間で終わらせました！',
                    style: TextStyle(color: Colors.teal),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
              ),
              FloatingActionButton(
                child: Icon(
                  Icons.people,
                ),
                backgroundColor: Colors.teal,
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Text(
                  '文系数学の良問プラチカ',
                  style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: 17.0,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Container(
                child: Expanded(
                  child: Text(
                    '◯◯ページを◯月△日から★日間で終わらせました！',
                    style: TextStyle(color: Colors.teal),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
