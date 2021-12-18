import 'package:flutter/material.dart';
import 'package:flutter_reboot/Model/catalog.dart';
import 'package:flutter_reboot/widgets/itemwidget.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: CatalogModels.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModels.items[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
