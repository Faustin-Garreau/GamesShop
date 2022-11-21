import 'package:brickdata/data/models/game.dart';
import 'package:dio/dio.dart';
import 'package:game_shop/data/models/game.dart';

class GameRepository {
  GameRepository();

  List<Game> games = [
    Game(id: 1, name: "Game1", price: 12.99),
    Game(id: 2, name: "Game2", price: 12.99),
    Game(id: 3, name: "Game2", price: 12.99)
  ];

  Future<List<Game>> getAllGame() {
    var gamesMap = games.map((e) {
      return {"name": e.name, "price": e.price};
    }).toList();
    print(gamesMap);
  }
}
