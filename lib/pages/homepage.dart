import 'package:day1/models/catalog.dart';
import 'package:day1/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/items.dart';

class Homepage extends StatelessWidget {
  final int days = 30;
  final String use = "Days";

  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => CatalogModel.item[0]);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Catalog App'),
        ),
        drawer: const MainDrawer(),
        body: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummyList[index]);
          },
        ));
  }
}
