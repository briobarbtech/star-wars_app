import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

class StarWarsRepository extends IStarWarsRepository {
  IRemoteDatasourceSW remoteDatasourceSW;
  StarWarsRepository(this.remoteDatasourceSW);
  @override
  Future<List<Character>> getAllCharacters() {
    return remoteDatasourceSW.getAllCharacters();
  }

  @override
  Future<StarWarsState> getPage(String page) {
    return remoteDatasourceSW.getPage(page);
  }

  @override
  Future<String> reportSighting(report) {
    return remoteDatasourceSW.reportSighting(report);
  }
}
