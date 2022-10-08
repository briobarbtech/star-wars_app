import 'package:hive_flutter/hive_flutter.dart';
import 'package:star_wars_app/characters/index/data/datasource/local_datasource/ilocal_storage_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/data/hive/model/starwars_state_hive.dart';
import 'package:star_wars_app/characters/index/data/model/character_model.dart';

class LocalStorageDatasourceSW extends ILocalStorageDatasourceSW {
  @override
  Future<void> saveIntoLocalStorage(
      String key, StarWarsState starWarsState) async {
    final Box boxStarWars = await Hive.openBox('starwars');
    boxStarWars.put(key, StarWarsStateHive.fromMovieEntity(starWarsState));
    print("Guardado en local Storage");
  }

  @override
  Future<StarWarsState> getFromLocalStorage(String key) async {
    final Box boxStarWars = await Hive.openBox('starwars');
    // ************************ HIVE ************************* //
    StarWarsStateHive next = boxStarWars.get(key);
    List<CharacterModel> characters =
        next.listCharacter.map((e) => CharacterModel.fromJson(e)).toList();
    // ****************************************************** //
    StarWarsState starWarsState = StarWarsState(
        isLoading: false,
        characters: characters,
        next: next.next,
        previous: next.previous);
    starWarsState;
    return starWarsState;
  }

  @override
  Future<bool> checkLocalStorage(String key) async {
    final Box boxStarWars = await Hive.openBox('starwars');
    return boxStarWars.containsKey(key);
  }

  @override
  Future<void> cleanLocalStorage() async {
    Box boxStarWars = await Hive.openBox('starwars');
    boxStarWars.clear();
  }
}
