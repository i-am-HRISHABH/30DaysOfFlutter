import 'package:flutter/material.dart';

import '../Model/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: GridTile(
        header: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text(
              item.name,
              style: TextStyle(color: Colors.white),
            )),
        child: Image.network(item.image),
        footer:  Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Text(
              item.price.toString(),
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
