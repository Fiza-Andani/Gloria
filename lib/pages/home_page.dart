import 'package:flutter/material.dart';
import 'package:gloria/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gloria'),
      ),
      body: Center(
        child: Container(
          child: Text('welcome'),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
