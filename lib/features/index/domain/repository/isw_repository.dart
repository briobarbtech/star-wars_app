import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

abstract class IStarWarsRepository {
  Future<StarWarsState> getPage(String page);
  Future<String> reportSighting(report);
}
