import 'package:flutter/material.dart';
import 'package:play_games/app/core/exceptions/reposittory_exception.dart';
import 'package:play_games/app/data/remote/i_game_repository.dart';
import 'package:play_games/app/domain/models/game_.dart';

class HomeController extends ChangeNotifier {
  final IGameRepository _gameRepository;
  List<Game> games = <Game>[];
  List<Game> gamesPlaying = <Game>[];
  List<Game> gameDiscount = <Game>[];
  List<Game> previouGames = <Game>[];

  var isLoading = false;

  late String message;

  HomeController({required IGameRepository repository})
      : _gameRepository = repository,
        super();

  Future<void> getAll({int page  = 1}) async {
    try {
      isLoading = true;
      notifyListeners();
      final gamesResult = await _gameRepository.get(page: page);
      gamesPlaying = gamesResult.sublist(8,11);
      games = gamesResult;
     
       gameDiscount = gamesResult.toList();
       gameDiscount.sort((a, b) => b.sugestions.compareTo(a.sugestions));
    } on RepositoryException catch (e) {
      message = e.message;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getPreviusGame({int page  = 1}) async {

    try {
      final now = DateTime.now();
      final initialDate = DateTime(now.year, now.month, now.day);
      final finalDate = DateTime(now.year, now.month + 6, now.day);

      final list = await _gameRepository.getGameByPeriodic(initialDate, finalDate,page: page);
       previouGames = list.sublist(0,5);
       
      notifyListeners();
    } on RepositoryException catch (e) {
      message = e.message;
      notifyListeners();
    }
    
  }
}
