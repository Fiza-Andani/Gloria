class catelogModel {
  static final items = [
    Item(
        id: 1,
        name: "HuddaBeauty",
        desc: "lorem ipsum",
        price: 700,
        color: "#dbcdf0",
        image: "assets/images/glitter.png")
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
