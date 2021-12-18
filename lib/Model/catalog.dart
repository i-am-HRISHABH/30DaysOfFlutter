class CatalogModels {
  static final items = [
    Item(
      name: 'example_name',
      id: 1,
      desc: 'this is an example product',
      price: 100,
      image: 'example_image',
      color: '#33505a',
    ),
  ];
}

class Item {
  final String name;
  final int id;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.color, this.name, this.id, this.desc, this.image, this.price});
}
