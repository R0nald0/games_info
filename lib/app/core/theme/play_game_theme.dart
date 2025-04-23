
import 'package:flutter/material.dart';
import 'package:play_games/app/core/theme/theme.dart';

class PlayGameTheme {
 
  PlayGameTheme._();
  
  static final theme = ThemeData(
    fontFamily: 'Assistant',
    scaffoldBackgroundColor: MaterialTheme.lightScheme().primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: MaterialTheme.lightScheme().primary,
    )
  
  );

}