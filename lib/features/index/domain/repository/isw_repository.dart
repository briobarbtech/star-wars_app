import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/domain/entities/report.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

abstract class IStarWarsRepository {
  Future<List<Character>> getAllCharacters();
  Future<StarWarsStatus> getPage(String page);
  Future<dynamic> reportSighting(Report report);
}
