import 'package:game_shop/data/models/game.dart';

class GameRepository {
  GameRepository();

  List<Game> games = [
    Game(id: 1, name: "Game1", price: 12.99, icon: "icon"),
    Game(id: 2, name: "Game2", price: 12.99, icon: "icon"),
    Game(id: 3, name: "Game2", price: 12.99, icon: "icon")
  ];

  var gamesMap = games.map((e) {
    return {e.id, e.name, e.price, e.icon};
  }).toList();

  print(gamesMap);
}
