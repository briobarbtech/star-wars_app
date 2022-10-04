import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

abstract class IGetAllCharacters {
  Future<List<Character>> getAllCharacter();
  Future<StarWarsStatus> getPage(String page);
}
