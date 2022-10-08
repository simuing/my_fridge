import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:my_fridge/fridge_item.dart';

class FridgeSpace extends StatelessWidget {
  String name = 'First';
  List items = [];

  FridgeSpace(String name, List items) {
    this.name = name;
    this.items = items;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 22),
            textAlign: TextAlign.center,
          ),
          ...(items as List).map((item) {
            return FridgeItem(
                item['name'], item['quantity'], item['quantities']);
          }),
          ElevatedButton(
            child: Text('음식 추가'),
            onPressed: () => print('click +'),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll<Color>(
                  Colors.lightBlueAccent.shade200),
            ),
          ),
        ],
      ),
    );
  }
}
