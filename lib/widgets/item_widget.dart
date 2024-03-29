import 'package:flutter/material.dart';
import 'package:gloria/models/catelog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(item.image),
    );
  }
}
