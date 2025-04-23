import 'package:flutter/material.dart';
import 'package:play_games/app/core/router/router.dart';
import 'package:play_games/app/core/theme/theme.dart';
import 'package:play_games/app/core/utils/custom_scrool_behavavior.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
   // final brightness = View.of(context).platformDispatcher.platformBrightness;
  
    TextTheme textTheme = Theme.of(context).textTheme;
    MaterialTheme theme = MaterialTheme(textTheme);
    
    return MaterialApp.router(
       scrollBehavior: CustomScroolBehavavior(),
       title: "Play Games",
       //theme: theme.light(),
       darkTheme: theme.dark(),
       debugShowCheckedModeBanner: false,
       routerConfig: appRouter,
    );
  }
}