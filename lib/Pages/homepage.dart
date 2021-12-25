import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_reboot/widgets/themes.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

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
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModels.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModels.items != null && CatalogModels.items.isNotEmpty)
                CatalogList().expand()
              else
                Center(
                  child: CircularProgressIndicator(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  // const CatalogHeader({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        'Catalog App'.text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        'Trending products'.text.xl2.make()
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  // const CatalogList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: CatalogModels.items.length,
        /* ERROR was found here, CatalogModels.item returns List<Item>
           but itemCount takes integer, so we need to add .length in the end. */
        itemBuilder: (context, index) {
          final catalog = CatalogModels.items[index];
          return CatalogItem(
            catalog: catalog,
          );
        });
  }
}

class CatalogItem extends StatelessWidget {
  // const CatalogItem({ Key? key }) : super(key: key);
  final Item catalog;

  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          CatalogImage(image: catalog.image),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                catalog.name.text.bold.lg.color(MyTheme.darkBluishColor).make(),
                catalog.desc.text.textStyle(context.captionStyle).make(),
                10.heightBox,
                ButtonBar(
                  alignment: MainAxisAlignment.spaceBetween,
                  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.xl2.make(),
                    ElevatedButton(
                      onPressed: () {},
                      child: 'Buy'.text.make(),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                        shape: MaterialStateProperty.all(StadiumBorder()),
                      ),
                    )
                  ],
                ).pOnly(right:8.0),
              ],
            ),
          ),
        ],
      ),
    ).white.square(150).roundedLg.make().py12();
  }
}

class CatalogImage extends StatelessWidget {
  // const CatalogImage({ Key? key }) : super(key: key);
  final String image;

  const CatalogImage({Key key, @required this.image})
      : assert(image != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .rounded
        .color(MyTheme.creamColor)
        .make()
        .p16()
        .w40(context);
  }
}
