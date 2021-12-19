import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:flutter_reboot/Model/catalog.dart';
import 'package:flutter_reboot/widgets/itemwidget.dart';
import '../widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModels.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    // print(productData);
    setState(() {});
  }

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
