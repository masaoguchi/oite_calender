import 'package:flutter/material.dart';

class Fotter extends StatefulWidget{
  const Fotter();

  @override
  _Fotter createState() => _Fotter();
}


class _Fotter extends State<Fotter> {
  int _selectedIndex = 0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  var _bottomNavigationBarItems = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.black26,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
    );
  }
}
