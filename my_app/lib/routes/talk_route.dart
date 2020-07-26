import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'tile.dart';
import 'how_to_study_route.dart';

class Talk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('参考書登録'),
          backgroundColor: Colors.green,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.settings),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/talk');
                },
                backgroundColor: Colors.green,
                child: Icon(Icons.add),
              ),
            ),
          ],
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //参考書名、ページ数、達成期日、登録ボタン
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                child: TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.import_contacts,
                      color: Colors.green,
                    ),
                    hintText: '参考書名',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.note_add,
                      color: Colors.green,
                    ),
                    hintText: 'ページ数、問題数',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: Icon(
                      Icons.calendar_today,
                      color: Colors.green,
                    ),
                    hintText: '達成期日',
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            FloatingActionButton(
              heroTag: 'hero1',
              elevation: 12.0,
              onPressed: () {
                //登録ボタンを押すと一覧にいく
                Navigator.pushNamed(context, '/timeline');
              },
              backgroundColor: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '登録',
                  ),
                  Icon(Icons.add)
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            RaisedButton.icon(
              icon: Icon(
                Icons.people,
                color: Colors.white,
              ),
              padding: EdgeInsets.all(8.0),
              highlightColor: Colors.green[900],
              elevation: 16.0,
              shape: StadiumBorder(
                side: BorderSide(color: Colors.green),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return howToStudyScreen();
                    },
                  ),
                );
              },
              color: Colors.green,
              label: Text(
                '先輩の勉強法',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
