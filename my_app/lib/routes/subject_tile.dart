import 'package:flutter/material.dart';
import 'library/flutter_slidable/flutter_slidable.dart';
import 'chat_route.dart';

class Subject_Tile extends StatelessWidget {
  IconData icon;
  String subjectname;
  String unit;
  Color tilecolor;
  int PeopleAmount;

  Subject_Tile({IconData icon, String subjectname, String unit, Color tilecolor, int PeopleAmount}) {
    this.icon = icon;
    this.subjectname = subjectname;
    this.unit = unit;
    this.tilecolor = tilecolor;
    this.PeopleAmount = PeopleAmount;
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.20,
      child: Container(
        decoration: new BoxDecoration(
          border: new Border(
            top: BorderSide(
              color: this.tilecolor,
              width: 5,
            ),
          ),
        ),
        //color: this.tilecolor,
        child: ListTile(
          leading: CircleAvatar(
            child: Icon(
              this.icon,
              color: Colors.black54,
            ),
            backgroundColor: Colors.white,
          ),
          title: Text(this.subjectname),
          subtitle: Text(this.unit),
          onTap: () => {},
        ),
      ),
      actions: <Widget>[
        IconSlideAction(
          color: Colors.black45,
          iconWidget: Text(
            "予定変更",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {
            showDialog<void>(
              context: context,
              barrierDismissible: true,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('予定変更'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('予定を明日へ移行しました'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            ),
          },
        ),
      ],
      secondaryActions: <Widget>[
        IconSlideAction(
          color: Colors.red,
          iconWidget: Text(
            "完了",
            style: TextStyle(color: Colors.white),
          ),
          onTap: () => {
            showDialog<void>(
              context: context,
              barrierDismissible: true,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('ToDo達成'),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('おめでとうございます！'),
                        Text(PeopleAmount.toString() + '人の進捗を抜かしました！'),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    FlatButton(
                      child: const Text('OK'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            ),
          },
        ),
      ],
    );
  }
}