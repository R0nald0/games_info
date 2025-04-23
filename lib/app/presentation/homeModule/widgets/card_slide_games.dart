import 'package:flutter/material.dart';
import 'package:play_games/app/core/exntensions/extension.dart';
import 'package:play_games/app/domain/models/game_.dart';

class CardSlideGames extends StatelessWidget {
  final Game game;

  const CardSlideGames({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: <Widget>[
        SizedBox(
          height: context.parcentHeight(1),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            child: Image(
              fit: BoxFit.cover,
              image: NetworkImage(
                game.image,
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10)
              ),
            gradient:
                LinearGradient(colors: <Color>[Colors.black12, Colors.black87]),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            spacing: 10,
            children: <Widget>[
              Text(
                game.title,
                overflow: TextOverflow.clip,
                softWrap: true,
                style: Theme.of(
                  context,
                ).textTheme.headlineLarge?.copyWith(color: Colors.white),
              ),
              SizedBox(
                width: context.parcentWidth(0.2),
                child: Text(
                  game.description,
                  overflow: TextOverflow.clip,
                  softWrap: true,
                  style: Theme.of(
                    context,
                  ).textTheme.bodyMedium?.copyWith(color: Colors.grey.shade300),
                ),
              ),
              Row(
                spacing: 10,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(context.theme.colorScheme.primary
                      )
                    ),
                    onPressed: () {}, 
                    child: Text("Pré Order".toUpperCase(),
                    style: context.theme.textTheme.labelMedium?.copyWith(
                       color: context.theme.colorScheme.tertiaryContainer,
                       fontWeight: FontWeight.bold
                    ),
                    )
                    ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: Icon(Icons.play_circle_fill),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
