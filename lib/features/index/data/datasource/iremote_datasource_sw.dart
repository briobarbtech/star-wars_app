import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

abstract class IRemoteDatasourceSW {
  Future<List<Character>> getAllCharacters();
  Future<StarWarsState> getPage(String page);
  Future<String> reportSighting(ReportModel report);
}
