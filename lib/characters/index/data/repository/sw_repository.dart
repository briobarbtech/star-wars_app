import 'package:star_wars_app/characters/index/data/datasource/remote_datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/domain/repository/isw_repository.dart';

class StarWarsRepository extends IStarWarsRepository {
  IRemoteDatasourceSW remoteDatasourceSW;
  StarWarsRepository(this.remoteDatasourceSW);

  @override
  Future<StarWarsState> getPage(String page) {
    return remoteDatasourceSW.getPage(page);
  }

  @override
  Future<String> reportSighting(report) {
    return remoteDatasourceSW.reportSighting(report);
  }
}
