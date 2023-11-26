import 'package:flutter/material.dart';
import 'package:gloria/models/catelog.dart';
import 'package:gloria/widgets/drawer.dart';
import 'package:gloria/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gloria'),
      ),
      body: ListView.builder(
          itemCount: catelogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: catelogModel.items[index],
            );
          }),
      drawer: MyDrawer(),
    );
  }
}
