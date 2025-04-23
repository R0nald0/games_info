

import 'package:play_games/app/domain/models/game_.dart';

abstract interface class IGameRepository{

   Future<List<Game>> get({int page  = 1});
   Future<List<Game>> getGameByPeriodic(DateTime initialDate,DateTime finalDate,{int page  = 1});

}