import 'package:hive_flutter/hive_flutter.dart';
import 'package:star_wars_app/features/index/data/datasource/ilocal_storage_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/hive/model/starwars_state_hive.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

class LocalStorageDatasourceSW extends ILocalStorageDatasourceSW {
  @override
  Future<void> saveStarWarsStates(
      String page, StarWarsState starWarsState) async {
    final Box boxStarWars = await Hive.openBox('starwars');
    boxStarWars.put(page, StarWarsStateHive.fromMovieEntity(starWarsState));
    //print("Guardado en local Storage");
  }

  @override
  Future<StarWarsState> changePage(String url) async {
    final Box boxStarWars = await Hive.openBox('starwars');
    // ************************ HIVE ************************* //
    StarWarsStateHive next = boxStarWars.get(url);
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
}
