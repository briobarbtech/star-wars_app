import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';

abstract class IGetFromLocalStorage {
  Future<bool> checkLocalStorage(String key);
  Future<StarWarsState> getFromLocalStorage(String key);
  Future<void> saveIntoLocalStorage(String key, StarWarsState starWarsState);
  Future<void> cleanLocalStorage();
}
