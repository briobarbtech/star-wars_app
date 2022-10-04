import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/domain/repository/icharacter_repository.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

class CharacterRepository extends ICharacterRepository {
  IRemoteDatasourceSW remoteDatasourceSW;
  CharacterRepository(this.remoteDatasourceSW);
  @override
  Future<List<Character>> getAllCharacters() {
    return remoteDatasourceSW.getAllCharacters();
  }

  @override
  Future<StarWarsStatus> getPage(page) {
    return remoteDatasourceSW.getPage(page);
  }
}
