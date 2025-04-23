import 'package:go_router/go_router.dart';
import 'package:play_games/app/presentation/homeModule/home_module.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home', routes: [
  HomeModule.homePage,
]);
