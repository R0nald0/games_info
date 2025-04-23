import 'package:flutter/material.dart';
import 'package:play_games/app/data/remote/i_game_repository.dart';
import 'package:play_games/app/data/remote/repository/game_repository.dart';
import 'package:play_games/app/data/remote/rest_client/impl/dio_rest_client_impl.dart';
import 'package:play_games/app/data/remote/rest_client/rest_client.dart';
import 'package:provider/provider.dart';

class AppProviders extends StatelessWidget {
  final Widget child;
  const AppProviders({super.key ,required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
        Provider<RestClient>(create: (context) =>DioRestClientImpl()),
        Provider<IGameRepository>(create:(context) => GameRepository(restClient: context.read()))
    ],
    child: child
    );
  }
}