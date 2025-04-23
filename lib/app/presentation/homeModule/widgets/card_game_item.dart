import 'package:flutter/material.dart';
import 'package:play_games/app/core/constants/constanst.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/domain/models/game_.dart';

class CardGameItem extends StatelessWidget {
   final Game _game; 

  const CardGameItem({ super.key, required Game game }):_game =game;

   @override
   Widget build(BuildContext context) {
      
       return InkWell(
            onTap: (){},
            child:  Padding(
              padding: EdgeInsets.only(bottom: 13),
              child: ListTile(
                   leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                       semanticLabel: "Imagem game",
                        height: context.shortestSide(0.09),
                           width: context.shortestSide(0.05),
                        _game.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                           return Image.asset(Constants.IMAGE_LOGO,
                           height: context.shortestSide(0.7),
                           width: context.shortestSide(0.7),
                           fit: BoxFit.contain,
                           );
                        },
                      ),
                    ),
                   title :Text(
                      _game.title,
                       style: TextStyle(color: context.theme.colorScheme.primary,
                       fontSize: 12),
                       overflow: TextOverflow.ellipsis, 
                      )
              ),
            )
       );
  }
}