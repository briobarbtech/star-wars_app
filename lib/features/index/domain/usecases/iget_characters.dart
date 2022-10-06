import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

abstract class IGetCharacters {
  Future<StarWarsState> getFirstPage();
  Future<StarWarsState> getPage(String page);
}
