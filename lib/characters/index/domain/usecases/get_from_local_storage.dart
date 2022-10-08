import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/domain/repository/isw_repository_local.dart';
import 'package:star_wars_app/characters/index/domain/usecases/iget_from_local_storage.dart';

class GetFromLocalStorage extends IGetFromLocalStorage {
  final IStarWarsRepositoryLocal starWarsRepositoryLocal;
  GetFromLocalStorage(this.starWarsRepositoryLocal);

  @override
  Future<bool> checkLocalStorage(String key) {
    return starWarsRepositoryLocal.checkLocalStorage(key);
  }

  @override
  Future<StarWarsState> getFromLocalStorage(String key) {
    return starWarsRepositoryLocal.getFromLocalStorage(key);
  }

  @override
  Future<void> saveIntoLocalStorage(String key, StarWarsState starWarsState) {
    return starWarsRepositoryLocal.saveIntoLocalStorage(key, starWarsState);
  }

  @override
  Future<void> cleanLocalStorage() {
    return starWarsRepositoryLocal.cleanLocalStorage();
  }
}
