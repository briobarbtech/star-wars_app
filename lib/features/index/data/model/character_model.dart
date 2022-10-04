import 'package:star_wars_app/features/index/domain/entities/character.dart';

class CharacterModel implements Character {
  CharacterModel({
    required this.birthYear,
    required this.eyeColor,
    required this.gender,
    required this.hairColor,
    required this.height,
    required this.homeworld,
    required this.mass,
    required this.name,
  });
  @override
  String birthYear;
  @override
  String eyeColor;
  @override
  String gender;
  @override
  String hairColor;
  @override
  String height;
  @override
  String homeworld;
  @override
  String mass;
  @override
  String name;

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
        birthYear: json["birth_year"],
        eyeColor: json["eye_color"],
        gender: json["gender"],
        hairColor: json["hair_color"],
        height: json["height"],
        homeworld: json["homeworld"],
        mass: json["mass"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "birth_year": birthYear,
        "eye_color": eyeColor,
        "gender": gender,
        "hair_color": hairColor,
        "height": height,
        "homeworld": homeworld,
        "mass": mass,
        "name": name,
      };
}
