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

      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          Tile(
            icon: Icons.person,
            username: "鹿太郎",
            message: "しかし，鹿しかいない",
          ),
          Tile(
            icon: Icons.person,
            username: "亀太郎",
            message: "しかし，亀しかいない",
          ),
          Tile(
            icon: Icons.person,
            username: "馬太郎",
            message: "しかし，馬しかいない",
          ),
          Tile(
            icon: Icons.person,
            username: "魚太郎",
            message: "しかし，魚しかいない",
          ),
          Tile(
            icon: Icons.person,
            username: "鳥太郎",
            message: "しかし，鳥しかいない",
          ),
          Tile(
            icon: Icons.person,
            username: "猿太郎",
            message: "しかし，猿しかいない",
          ),
          Tile(
            icon: Icons.person,
            username: "犬太郎",
            message: "しかし，犬しかいない",
          ),
        ],
      )
    );
  }
}