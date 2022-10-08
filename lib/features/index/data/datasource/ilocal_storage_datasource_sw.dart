import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

abstract class ILocalStorageDatasourceSW {
  Future<void> saveStarWarsStates(String page, StarWarsState starWarsState);
  Future<StarWarsState> changePage(String url);
}
