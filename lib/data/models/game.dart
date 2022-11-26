class Game {
  int id;
  String name, icon;
  double price;

  Game({
    required this.id,
    required this.name,
    required this.price,
    required this.icon,
  });

  // Map<String, dynamic> toMap() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'price': price,
  //     'icon': icon,
  //   };
  // }

  // static dynamic getListMap(List<dynamic> items) {
  //   if (items == null) {
  //     return null;
  //   }
  //   List<Map<String, dynamic>> list = [];
  //   items.forEach((element) {
  //     list.add(element.toMap());
  //   });
  //   return list;
  // }
}
