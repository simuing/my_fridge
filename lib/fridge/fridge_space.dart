import 'package:flutter/material.dart';
import 'package:my_fridge/fridge/fridge_item.dart';

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
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      decoration:
          BoxDecoration(border: Border.all(color: Colors.black, width: 2)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(fontSize: 22),
            textAlign: TextAlign.center,
          ),
          ...(items as List).map((item) {
            return FridgeItem(
                name: item['name'],
                quantity: item['quantity'],
                quantities: item['quantities']);
          }),
          ElevatedButton(
            child: Text(
              '음식 추가', 
              style: TextStyle(fontSize: 22)
            ),
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
