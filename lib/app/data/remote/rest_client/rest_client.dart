import 'package:play_games/app/data/dto/game_dto.dart';

abstract interface class RestClient {
  Future<List<GameDto>> get({int page = 1});
  Future<List<GameDto>> getGameByPeriodic(String initialDate, String finalDate);
}