import 'package:star_wars_app/characters/index/domain/entities/planet.dart';

class PlanetModel extends Planet {
  PlanetModel({
    required this.name,
    required this.rotationPeriod,
    required this.orbitalPeriod,
    required this.diameter,
    required this.climate,
    required this.gravity,
    required this.terrain,
    required this.surfaceWater,
    required this.population,
  }) : super(
            name: name,
            rotationPeriod: rotationPeriod,
            orbitalPeriod: orbitalPeriod,
            diameter: diameter,
            climate: climate,
            gravity: gravity,
            terrain: terrain,
            surfaceWater: surfaceWater,
            population: population);

  String name;
  String rotationPeriod;
  String orbitalPeriod;
  String diameter;
  String climate;
  String gravity;
  String terrain;
  String surfaceWater;
  String population;

  factory PlanetModel.fromJson(Map<String, dynamic> json) => PlanetModel(
        name: json["name"],
        rotationPeriod: json["rotation_period"],
        orbitalPeriod: json["orbital_period"],
        diameter: json["diameter"],
        climate: json["climate"],
        gravity: json["gravity"],
        terrain: json["terrain"],
        surfaceWater: json["surface_water"],
        population: json["population"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "rotation_period": rotationPeriod,
        "orbital_period": orbitalPeriod,
        "diameter": diameter,
        "climate": climate,
        "gravity": gravity,
        "terrain": terrain,
        "surface_water": surfaceWater,
        "population": population,
      };
}
