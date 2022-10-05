import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

abstract class IGetAllCharacters {
  Future<List<Character>> getAllCharacter();
  Future<StarWarsState> getPage(String page);
}
