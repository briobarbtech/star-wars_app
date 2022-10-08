import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

abstract class IGetCharacters {
  Future<StarWarsState> getPage(String page);
}
