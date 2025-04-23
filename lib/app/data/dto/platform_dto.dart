import 'dart:convert';


class PlatformDto {
  final int? id;
  final String name;
  
  PlatformDto({
    required this.id,
    required this.name,
  });

  PlatformDto copyWith({
    int? id,
    String? name,
  }) {
    return PlatformDto(
      id: id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory PlatformDto.fromMap(Map<String, dynamic> map) {
    
    return PlatformDto(
      id: map['platform']['id'],
      name: map['platform']['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PlatformDto.fromJson(String source) => PlatformDto.fromMap(json.decode(source));
}
