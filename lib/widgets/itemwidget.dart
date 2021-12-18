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
      child: ListTile(
        onTap: (){
          print('${item.name} pressed');
        },
        leading: Image.network('https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-12-family-select-2021?wid=940&hei=1112&fmt=jpeg&qlt=80&.v=1617135051000'),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text('\$${item.price}',style: TextStyle(
          color: Colors.deepPurple, fontSize: 25, fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
