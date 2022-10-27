import 'package:flutter/material.dart';

class FridgeItem extends StatelessWidget {
  final Function selectHandler = () => null;
  final int id = 0;
  final String name;
  String quantities = '개';
  int quantity = 1;

  FridgeItem({
    super.key,
    required this.name,
    required this.quantity,
    required this.quantities,
  });
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
        child: Text('${this.name} ${this.quantity}${this.quantities}'),
        onPressed: () => print(this.name),
      ),
    );
  }
}
