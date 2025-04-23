

import 'package:play_games/app/data/dto/game_dto.dart';
import 'package:play_games/app/domain/models/platform.dart';

class Game {
  final int? id;
  final String title;
  final double price;
  final double rate;
  final int ratingTop;
  final String description;
  final String image;
  final int sugestions;
  final List<Platform>?  platforms;

  Game(
      {required this.id,
      required this.title,
      required this.price,
      required this.rate,
      required this.ratingTop,
      required this.description,
      required this.image,
      required this.sugestions,
      this.platforms
      });

  factory Game.fromDto(GameDto gameDto) {
         return Game(
          id: gameDto.id, 
          title: gameDto.name ?? '', 
          price: 0.00, 
          rate: gameDto.rating ?? 0.0,
          ratingTop: gameDto.ratingTop ?? 0, 
          description: gameDto.description ?? '', 
          image: gameDto.backgroundImage ?? '',
          sugestions: gameDto.suggestionsCount ?? 0,
          platforms: gameDto.platforms?.map((e) => Platform.fromDto(e) ).toList()
           );
   }   
 

  Game copyWith({
    int? id,
    String? title,
    double? price,
    double? rate,
    int? ratingTop,
    int? sugestions,
    String? description,
    String? image,
  }) {
    return Game(
      id: id,
      title: title ?? this.title,
      price: price ?? this.price,
      rate: rate ?? this.rate,
      sugestions: sugestions ?? this.sugestions,
      ratingTop: ratingTop ?? this.ratingTop,
      description: description ?? this.description,
      image: image ?? this.image,
    );
  }
}
