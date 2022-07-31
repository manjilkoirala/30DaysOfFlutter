// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:day1/models/catalog.dart';
import 'package:day1/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/items.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;

  final String use = "Days";
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogjson = await rootBundle.loadString('assets/files/catalog.json');
    var decodedData = jsonDecode(catalogjson);
    var productData = decodedData["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Catalog App'),
        ),
        drawer: const MainDrawer(),
        body: GridView.builder(
            itemCount: CatalogModel.items.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
            ),
            itemBuilder: (context, index) {
              final item = CatalogModel.items[index];
              return Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                clipBehavior: Clip.antiAlias,
                child: GridTile(
                  header: Container(
                    decoration: BoxDecoration(color: Colors.blue),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      item.name,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  footer: Container(
                    decoration:
                        BoxDecoration(color: Color.fromARGB(255, 32, 46, 46)),
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "\$${item.price.toString()}",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  child: Image.network(item.image),
                ),
              );
            }));
  }
}
