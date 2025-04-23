import 'dart:developer';

import 'package:play_games/app/core/exceptions/reposittory_exception.dart';
import 'package:play_games/app/data/remote/rest_client/rest_client.dart';
import 'package:play_games/app/domain/models/game_.dart';

import '../i_game_repository.dart';

class GameRepository implements IGameRepository {
  final RestClient _client;

  GameRepository({required RestClient restClient}) : _client = restClient;

  @override
  Future<List<Game>> get({int page  = 1}) async {
    try {
      final result = await _client.get(page: page);
      return result.map((gameDto) => Game.fromDto(gameDto)).toList();
    } on RepositoryException catch (e, s) {
      log("Erro $e");
      log('StackTrace : $s');
      throw RepositoryException(message: "Falha ao buscar dados");
    }
  }

  @override
  Future<List<Game>> getGameByPeriodic(
      DateTime initialDate, DateTime finalDate,{int page =1}) async {
    try {
     final  initialDateString = '${initialDate.day}-${initialDate.month}-${initialDate.year}'; 
     final  finalDateString = '${initialDate.day}-${initialDate.month}-${initialDate.year}'; 
     
      final games = await _client.getGameByPeriodic(initialDateString, finalDateString,);
      return games.map((g) => Game.fromDto(g)).toList();
    } on RepositoryException catch (e) {
       throw RepositoryException(message: e.message);
    }
  }
}
