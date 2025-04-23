

import 'package:play_games/app/data/dto/platform_dto.dart';

class GameDto {
  int? id;
  String? slug;
  String? name;
  String? nameOriginal;
  String? description;
  int? ratingTop;
  double? rating;
  String? backgroundImage;
  int? suggestionsCount;
  List<PlatformDto>? platforms;
 
 
  GameDto(
      {this.id,
      this.slug,
      this.name,
      this.nameOriginal,
      this.description,
      this.rating,
      this.ratingTop,
      this.backgroundImage,
      this.suggestionsCount,
      this.platforms
   });

   
  GameDto.fromJson(Map<String, dynamic> json) {
     
    id = json['id'];
    slug = json['slug'];
    name = json['name'];
    nameOriginal = json['name_original'];
    description = json['description'];
    rating =json['rating'];
    ratingTop =json['rating_top'];
    backgroundImage =json['background_image'];
    suggestionsCount =json['suggestions_count'];
    platforms = json['parent_platforms'].map<PlatformDto>((p) => PlatformDto.fromMap(p)).toList();
     
    }
  
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['slug'] = slug;
    data['name'] = name;
    data['name_original'] = nameOriginal;
    data['description'] = description;
    data['rating'] = rating;
    data['rating_top'] = ratingTop; 
    data['background_image'] =backgroundImage;
    data['suggestions_count'] =suggestionsCount;
    data['parent_platforms']= platforms;
    return data;
  }
}
/* 
class MetacriticPlatforms {
	int? metascore;
	String? url;

	MetacriticPlatforms({this.metascore, this.url});

	MetacriticPlatforms.fromJson(Map<String, dynamic> json) {
		metascore = json['metascore'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = <String, dynamic>{};
		data['metascore'] = metascore;
		data['url'] = url;
		return data;
	}
}

class Ratings {
	Ratings();

	Ratings.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class EsrbRating {
	int? id;
	String? slug;
	String? name;

	EsrbRating({this.id, this.slug, this.name});

	EsrbRating.fromJson(Map<String, dynamic> json) {
		id = json['id'];
		slug = json['slug'];
		name = json['name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['id'] = id;
		data['slug'] = slug;
		data['name'] = name;
		return data;
	}
}

class Platforms {
	EsrbRating? platform;
	String? releasedAt;
	Requirements? requirements;

	Platforms({this.platform, this.releasedAt, this.requirements});

	Platforms.fromJson(Map<String, dynamic> json) {
		platform = json['platform'] != null ? new EsrbRating.fromJson(json['platform']) : null;
		releasedAt = json['released_at'];
		requirements = json['requirements'] != null ? new Requirements.fromJson(json['requirements']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (platform != null) {
      data['platform'] = platform!.toJson();
    }
		data['released_at'] = releasedAt;
		if (requirements != null) {
      data['requirements'] = requirements!.toJson();
    }
		return data;
	}
}

class Requirements {
	String? minimum;
	String? recommended;

	Requirements({this.minimum, this.recommended});

	Requirements.fromJson(Map<String, dynamic> json) {
		minimum = json['minimum'];
		recommended = json['recommended'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['minimum'] = minimum;
		data['recommended'] = recommended;
		return data;
	}
}
 */