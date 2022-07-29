import 'package:day1/widgets/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String use = "Days";

  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Catalog App'),
      ),
      drawer: const MainDrawer(),
      body: Center(child: Text("Flutter $days $use Challenge")),
    );
  }
}
