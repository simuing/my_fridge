import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_fridge/fridge/fridge_item.dart';

class FridgeSpace extends StatelessWidget {
  String name = 'First';
  List items = [];

  String newItemName = '';
  int newItemCount = 0;

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
          Card(
            elevation: 3, // shadow
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: '음식명'),
                    maxLength: 20,
                    onChanged: (value) => newItemName = value,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: '개수'),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only numbers can be entered
                    textAlign: TextAlign.right,
                    maxLength: 5,
                    onChanged: (value) => newItemCount = int.parse(value),
                  ),
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
            ),
          ),
        ],
      ),
    );
  }
}
