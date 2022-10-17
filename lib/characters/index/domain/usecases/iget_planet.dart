import 'package:star_wars_app/characters/index/domain/entities/planet.dart';

abstract class IGetPlanet {
  Future<Planet> getPlanet(String url);
}
