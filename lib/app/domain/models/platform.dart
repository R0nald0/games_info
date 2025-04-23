import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:play_games/app/data/dto/platform_dto.dart';

class Platform {
  final int? id;
  final String name;


    Platform({
    required this.name,
    this.id,
  
  });

  
    
  Platform copyWith({
    ValueGetter<int?>? id,
    String? name,
    ValueGetter<IconData?>? icon    
  }) {
    return Platform(
          id: id != null ? id() : this.id,
      name: name ?? this.name,
  
    );
  }
  
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }
   
   factory Platform.fromDto(PlatformDto dto) {
    return Platform(
      id: dto.id,
      name: dto.name ,
      
    );
  }
  IconData getIconsPlatform(String platform){
   return switch(platform){
       'PC'  => FontAwesomeIcons.windows,
       'PlayStation 5'  => FontAwesomeIcons.playstation,
       'PlayStation 4'  => FontAwesomeIcons.playstation,
       'PlayStation 3'  => FontAwesomeIcons.playstation,
       'Nintendo'  => FontAwesomeIcons.gamepad,
       'PS Vita'  => FontAwesomeIcons.p,
       'Android'  => FontAwesomeIcons.android,
       'xbox' => FontAwesomeIcons.xbox,
      _  => FontAwesomeIcons.x
    };
  }
 
  String toJson() => json.encode(toMap());
}
