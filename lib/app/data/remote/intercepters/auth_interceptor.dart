import 'package:dio/dio.dart';
import 'package:play_games/app/core/constants/constanst.dart';

class AuthInterceptor extends Interceptor{
   @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'key' : Constants.API_KEY,
    });
  
    handler.next(options);
  }
}