import 'package:star_wars_app/characters/index/data/datasource/local_datasource/ilocal_storage_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/domain/repository/isw_repository_local.dart';

class StarWarsRepositoryLocal extends IStarWarsRepositoryLocal {
  ILocalStorageDatasourceSW localStorageDatasourceSW;
  StarWarsRepositoryLocal(this.localStorageDatasourceSW);

  @override
  Future<bool> checkLocalStorage(String key) {
    return localStorageDatasourceSW.checkLocalStorage(key);
  }

  @override
  Future<StarWarsState> getFromLocalStorage(String key) {
    return localStorageDatasourceSW.getFromLocalStorage(key);
  }

  @override
  Future<void> saveIntoLocalStorage(String key, StarWarsState starWarsState) {
    return localStorageDatasourceSW.saveIntoLocalStorage(key, starWarsState);
  }

  @override
  Future<void> cleanLocalStorage() {
    return localStorageDatasourceSW.cleanLocalStorage();
  }
}
