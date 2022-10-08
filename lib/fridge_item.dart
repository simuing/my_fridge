import 'package:flutter/material.dart';

String getItemName(FridgeItem item) {
  return item.name + ' ' + item.quantity.toString() + item.quantities;
}

class FridgeItem extends StatelessWidget {
  final Function selectHandler = () => null;
  int id = 0;
  String name = 'name';
  int quantity = 1;
  String quantities = '개';

  FridgeItem(String name, int quantity, String quantities) {
    this.name = name;
    this.quantity = quantity;
    this.quantities = quantities;
  }
  // _FridgeItem(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(3),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
        ),
        child: Text(getItemName(this)),
        onPressed: () => print(this.name),
      ),
    );
  }
}
