import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';

abstract class ILocalStorageDatasourceSW {
  Future<void> saveIntoLocalStorage(String key, StarWarsState starWarsState);
  Future<StarWarsState> getFromLocalStorage(String key);
  Future<bool> checkLocalStorage(String key);
  Future<void> cleanLocalStorage();
}
