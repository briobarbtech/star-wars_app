import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

abstract class IRemoteDatasourceSW {
  Future<List<Character>> getAllCharacters();
  Future<StarWarsStatus> getPage(page);
}
