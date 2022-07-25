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
        title: const Text('This is app bar'),
      ),
      drawer: const Drawer(),
      body: Center(child: Text("Flutter $days $use Challenge")),
    );
  }
}
