import 'package:star_wars_app/characters/index/domain/entities/character.dart';

// Modelo que contiene los métodos de la clase Character que implementa
class CharacterModel extends Character {
  CharacterModel(
      {required this.birthYear,
      required this.eyeColor,
      required this.gender,
      required this.hairColor,
      required this.skinColor,
      required this.height,
      required this.homeworld,
      required this.mass,
      required this.name})
      : super(
            birthYear: birthYear,
            eyeColor: eyeColor,
            gender: gender,
            hairColor: hairColor,
            skinColor: skinColor,
            height: height,
            homeworld: homeworld,
            mass: mass,
            name: name);

  String birthYear;
  String eyeColor;
  String gender;
  String hairColor;
  String skinColor;
  String height;
  String homeworld;
  String mass;
  String name;

  factory CharacterModel.fromJson(Map<String, dynamic> json) => CharacterModel(
      birthYear: json["birth_year"],
      eyeColor: json["eye_color"],
      gender: json["gender"],
      hairColor: json["hair_color"],
      skinColor: json["skin_color"],
      height: json["height"],
      homeworld: json["homeworld"],
      mass: json["mass"],
      name: json["name"]);

  Map<String, dynamic> toMap() => {
        "birth_year": birthYear,
        "eye_color": eyeColor,
        "gender": gender,
        "hair_color": hairColor,
        "skin_color": skinColor,
        "height": height,
        "homeworld": homeworld,
        "mass": mass,
        "name": name
      };

  Map<String, dynamic> toJson() => {
        "birth_year": birthYear,
        "eye_color": eyeColor,
        "gender": gender,
        "hair_color": hairColor,
        "skin_color": skinColor,
        "height": height,
        "homeworld": homeworld,
        "mass": mass,
        "name": name
      };
}
