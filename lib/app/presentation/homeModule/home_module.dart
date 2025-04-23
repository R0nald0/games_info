
import 'package:go_router/go_router.dart';
import 'package:play_games/app/data/remote/i_game_repository.dart';
import 'package:play_games/app/presentation/homeModule/home_controller.dart';
import 'package:play_games/app/presentation/homeModule/home_page.dart';
import 'package:provider/provider.dart';

final class HomeModule{
   static final  homePage = GoRoute(
    path: '/home',
    builder: (context, state) => MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeController(
          repository: context.read<IGameRepository>())
          ..getPreviusGame(),
          )
      ], 
      builder:(context, child) {
          return HomePage(homeController: context.read());
      }
      ,),
    );
}