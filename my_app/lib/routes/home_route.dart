import 'package:flutter/material.dart';

import 'subject_tile.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('マイページ'),
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
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child: Text(
                '○○大学志望で今勉強している人',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black38,
                ),
              ),
            ),
            Center(
              child: Text(
                '1567人',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 22.0, 0.0, 0.0),
              child: Text(
                '本日のToDo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black38,
                ),
              ),
            ),
            Subject_Tile(
              icon: Icons.font_download,
              subjectname: '関係代名詞',
              unit: '1章3節',
              tilecolor: Color(0xaada70d6),
              PeopleAmount: 39,
            ),
            Subject_Tile(
              icon: Icons.import_contacts,
              subjectname: '小論文',
              unit: '3章1節',
              tilecolor: Color(0x99ff8c00),
              PeopleAmount: 246,
            ),
            Subject_Tile(
              icon: Icons.plus_one,
              subjectname: '三角関数',
              unit: '2章6節',
              tilecolor: Color(0xaaadd8e6),
              PeopleAmount: 92,
            ),
            Subject_Tile(
              icon: Icons.fitness_center,
              subjectname: '慣性の法則',
              unit: '5章1節',
              tilecolor: Color(0xaa90ee90),
              PeopleAmount: 80,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0.0, 22.0, 0.0, 0.0),
              child: Text(
                'スケジュール',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black38,
                ),
              ),
            ),
            Wrap(
              children: <Widget>[
                displayMonth(label: 'July'),
                DayOfTheWeek(label: 'Sun', Textcolor: Colors.red),
                DayOfTheWeek(label: 'Mon'),
                DayOfTheWeek(label: 'Tue'),
                DayOfTheWeek(label: 'Wed'),
                DayOfTheWeek(label: 'Thu'),
                DayOfTheWeek(label: 'Fri'),
                DayOfTheWeek(label: 'Sat', Textcolor: Colors.blue),
                myContainer(label: ''),
                myContainer(label: ''),
                myContainer(label: ''),
                myContainer(
                  label: '1',
                  English: Colors.purple,
                  Math: Colors.blue,
                  Society: Colors.yellow,
                ),
                myContainer(
                  label: '2',
                  Math: Colors.blue,
                  Science: Colors.green,
                  Society: Colors.yellow,
                ),
                myContainer(label: '3'),
                myContainer(label: '4'),
                myContainer(
                  label: '5',
                  English: Colors.purple,
                  Japanese: Colors.orange,
                  Math: Colors.blue,
                  Science: Colors.green,
                ),
                myContainer(label: '6'),
                myContainer(label: '7'),
                myContainer(
                  label: '8',
                  English: Colors.purple,
                  Math: Colors.blue,
                ),
                myContainer(
                  label: '9',
                  Math: Colors.blue,
                  Science: Colors.green,
                  Society: Colors.yellow,
                ),
                myContainer(label: '10'),
                myContainer(
                  label: '11',
                  Japanese: Colors.orange,
                ),
                myContainer(
                  label: '12',
                  English: Colors.purple,
                  Math: Colors.blue,
                  Science: Colors.green,
                ),
                myContainer(label: '13'),
                myContainer(label: '14'),
                myContainer(
                  label: '15',
                  English: Colors.purple,
                  Math: Colors.blue,
                  Society: Colors.yellow,
                ),
                myContainer(label: '16'),
                myContainer(label: '17'),
                myContainer(label: '18'),
                myContainer(label: '19'),
                myContainer(
                  label: '20',
                  English: Colors.purple,
                  Japanese: Colors.orange,
                  Math: Colors.blue,
                  Science: Colors.green,
                ),
                myContainer(label: '21'),
                myContainer(
                  label: '22',
                  English: Colors.purple,
                  Math: Colors.blue,
                ),
                myContainer(
                  label: '23',
                  Math: Colors.blue,
                  Science: Colors.green,
                  Society: Colors.yellow,
                ),
                myContainer(label: '24'),
                myContainer(label: '25'),
                myContainer(
                  label: '26',
                  color: Color(0x55ffc0cb),
                  English: Colors.purple,
                  Japanese: Colors.orange,
                  Math: Colors.blue,
                  Science: Colors.green,
                  Society: Color(0x33ffc0cb),
                ),
                myContainer(label: '27'),
                myContainer(label: '28'),
                myContainer(
                  label: '29',
                  English: Colors.purple,
                  Math: Colors.blue,
                  Society: Colors.yellow,
                ),
                myContainer(
                  label: '30',
                  Math: Colors.blue,
                  Science: Colors.green,
                  Society: Colors.yellow,
                ),
                myContainer(label: '31'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Container displayMonth({double size = 364, String label = ''}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.5),
    width: size,
    height: 30,
    alignment: Alignment.center,
    color: Colors.white30,
    child: Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
    ),
  );
}

Container DayOfTheWeek(
    {double size = 52, String label = '', Color Textcolor = Colors.black}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.5),
    width: size,
    height: 30,
    alignment: Alignment.center,
    color: Colors.white30,
    child: Text(
      label,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Textcolor,
      ),
    ),
  );
}

Container myContainer(
    {double size = 52,
    String label = '',
    Color color = Colors.white30,
    Color English = Colors.white30,
    Color Japanese = Colors.white30,
    Color Math = Colors.white30,
    Color Science = Colors.white30,
    Color Society = Colors.white30}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.5),
    width: size,
    height: size,
    alignment: Alignment.center,
    color: color,
    child: Column(
      children: <Widget>[
        Text(label),
        Wrap(
          children: <Widget>[
            SchedulePointer(color: English),
            SchedulePointer(color: Japanese),
            SchedulePointer(color: Math),
            SchedulePointer(color: Science),
            SchedulePointer(color: Society),
          ],
        ),
      ],
    ),
  );
}

Container SchedulePointer({Color color = Colors.white30}) {
  return Container(
    height: 7,
    width: 7,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}
