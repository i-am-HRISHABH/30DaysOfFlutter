class CatalogModels {
  static var items = [
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

  factory Item.fromMap(Map<String,dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      image: map["image"],
      price: map["price"],
      color: map["color"],
    );
  }

  toMap() => {
    "id" : id,
    "name" : name,
    "desc" : desc,
    "price" : price,
    "color" : color,
    "image" : image,
  };
}
