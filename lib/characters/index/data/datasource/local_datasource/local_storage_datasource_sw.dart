import 'package:hive_flutter/hive_flutter.dart';
import 'package:star_wars_app/characters/index/data/datasource/local_datasource/ilocal_storage_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/data/hive/model/starwars_state_hive.dart';
import 'package:star_wars_app/characters/index/data/model/character_model.dart';

class LocalStorageDatasourceSW extends ILocalStorageDatasourceSW {
  @override
  Future<void> saveIntoLocalStorage(
      String key, StarWarsState starWarsState) async {
    // Abro la db de Hive
    final Box boxStarWars = await Hive.openBox('starwars');
    // Agrego el objeto obtenido a la db de hive
    boxStarWars.put(key, StarWarsStateHive.fromMovieEntity(starWarsState));
    print("Guardado en local Storage");
  }

  @override
  Future<StarWarsState> getFromLocalStorage(String key) async {
    // Abro la db de Hive

    final Box boxStarWars = await Hive.openBox('starwars');
    // Traigo el objeto StarWarsStateHive de la db de hive usando la llave recibida como parametro
    StarWarsStateHive starWarsStateHive = boxStarWars.get(key);
    // Construyo el objeto hive en uno StarWarsState
    StarWarsState starWarsState = StarWarsState(
        isLoading: false,
        characters: starWarsStateHive.listCharacter
            .map((e) => CharacterModel.fromJson(e))
            .toList(),
        next: starWarsStateHive.next,
        previous: starWarsStateHive.previous);
    starWarsState;
    // Devuelvo el objeto construido anteriormente
    return starWarsState;
  }

  @override
  Future<bool> checkLocalStorage(String key) async {
    // Abro la db de Hive
    final Box boxStarWars = await Hive.openBox('starwars');
    // verifico si la db de hive contiene la key que recibe la función como parametro, y devuelvo el resultado de la consulta | Puede ser true o false
    return boxStarWars.containsKey(key);
  }

  @override
  Future<void> cleanLocalStorage() async {
    // Abro la db de Hive
    Box boxStarWars = await Hive.openBox('starwars');
    // llamo el método para limpiar la db de hive
    boxStarWars.clear();
  }
}
