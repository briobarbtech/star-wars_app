import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/domain/entities/planet.dart';

abstract class IRemoteDatasourceSW {
  Future<StarWarsState> getPage(String page);
  Future<Planet> getPlanet(String url);
}
