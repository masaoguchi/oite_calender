import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/routes/sign_up_routes.dart';

import 'routes/home_route.dart';
import 'routes/sign_in_routes.dart';
import 'routes/talk_route.dart';
import 'routes/timeline_route.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  var _routes = [
    Home(),
    Talk(),
    Timeline(),
    sign_in(),
    sign_up(),
    //News(),
    //Wallet(),
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
              Icons.person,
            ),
            title: Text('マイページ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_add,
            ),
            title: Text('参考書登録'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.library_books,
            ),
            title: Text('参考書一覧'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
