import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';

abstract class IGetCharacters {
  Future<StarWarsState> getPage(String page);
}
