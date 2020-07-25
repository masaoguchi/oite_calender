import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_app/header.dart';

import 'header.dart';

import 'routes/home_route.dart';
import 'routes/talk_route.dart';
import 'routes/timeline_route.dart';
import 'routes/wallet_route.dart';
import 'routes/news_route.dart';

class RootWidget extends StatefulWidget{
  const RootWidget({Key key}) : super(key : key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}


class _RootWidgetState extends State<RootWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  var _routes = [
    Home(),
    Talk(),
    Timeline(),
    News(),
    Wallet(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: Header(),
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              title: Text('ホーム'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.textsms,
              ),
              title: Text('トーク'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.access_time,
              ),
              title: Text('タイムライン'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.content_paste,
              ),
              title: Text('ニュース'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
              ),
              title: Text('ウォレット'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          onTap: _onItemTapped,
      ),
    );
  }
}
