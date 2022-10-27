import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:my_fridge/fridge/fridge_space.dart';
import 'package:intl/intl.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _fridgeIndex = 1;

  @override
  Widget build(BuildContext context) {
    final df = new DateFormat('yyyy-MM-dd hh:mm a');
    var today = df.format(DateTime.now());

    var data = [
      {
        'name': '냉장고 A',
        'items': [
          {'name': 'Apple', 'quantity': 3, 'quantities': '개'},
          {'name': 'Water', 'quantity': 10, 'quantities': '병'},
          {'name': 'Lemon', 'quantity': 9, 'quantities': '개'},
        ]
      },
      {
        'name': '냉장고 B',
        'items': [
          {'name': 'Orange', 'quantity': 13, 'quantities': '개'},
        ]
      },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Fridge'),
        ),
        body: Column(
          children: <Widget>[
            ...(data as List).map((fridge) {
              return FridgeSpace(fridge['name'], fridge['items']);
            }).toList(),
            FloatingActionButton(
              child: Text('칸추가'),
              onPressed: () => print('click pp'),
            ),
            Text('현재시각: ${today}')
          ],
        ),
      ),
    );
  }
}
