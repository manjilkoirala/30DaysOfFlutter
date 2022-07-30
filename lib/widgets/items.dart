import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          '\$${item.price}',
          style: const TextStyle(
              color: Color.fromARGB(255, 7, 80, 141),
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
