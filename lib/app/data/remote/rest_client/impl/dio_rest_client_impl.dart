import 'dart:developer';

import 'package:dio/browser.dart';
import 'package:dio/dio.dart';
import 'package:play_games/app/core/constants/constanst.dart';
import 'package:play_games/app/core/exceptions/reposittory_exception.dart';
import 'package:play_games/app/data/dto/game_dto.dart';
import 'package:play_games/app/data/remote/intercepters/auth_interceptor.dart';
import 'package:play_games/app/data/remote/rest_client/rest_client.dart';

class DioRestClientImpl implements RestClient {
  late DioForBrowser _dio;

  DioRestClientImpl() {
    _dio = DioForBrowser(BaseOptions(baseUrl: Constants.BASE_URL));
    _dio.interceptors.addAll([
      AuthInterceptor(),
      //LogInterceptor(requestBody: true, responseBody: true)
    ]);
  }

  @override
  Future<List<GameDto>> get({int page = 1}) async {
    try {
      final response = await _dio.get('/games',queryParameters: {
        'page' : page,
      });
      final games = response.data['results'];
      return games.map<GameDto>((e) => GameDto.fromJson(e)).toList();
    } on DioException catch (e, s) {
      log("Erro $e");
      log('StackTrace : $s');
      throw RepositoryException(message: "Falha ao buscar dados");
    }
  }

  @override
  Future<List<GameDto>> getGameByPeriodic(
      String initialDate, String finalDate,[int page = 1]) async {
    try {
  
      final response = await _dio.get('/games', queryParameters: {
        'page' : page,
        'dates': '2025-04-20,2025-12-31',
        'ordering': '-added'
      });
       final gamesPerDates = response.data['results'];

      return gamesPerDates
          .map<GameDto>((game) => GameDto.fromJson(game))
          .toList();


    } on DioException catch (e, s) {
       log('erro ao buscar daddos',error: e,stackTrace: s);
       print('erro :$e');
       throw RepositoryException(message: "erro ao buscar daddos");
    }
  }
}
