

class CatalogModel{
  static List<Item>? items ;
}

//structure of items
class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(
      {required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

//frommap is the name we have given // u can also keep it as fromjson
//key in this map is of type string while value is dynamic
  //gives an error that final veraibles must be initialised
  //factory is used in cases like our class has cat and dog using factory w can specify which constructor to call also it ddeals with the above error
  factory Item.fromMap(Map<String, dynamic> map){
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  //above is the decoder we also need a encoder

//upar we made class from a map
//ab we do mao from a class
  toMap() =>
      {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}

