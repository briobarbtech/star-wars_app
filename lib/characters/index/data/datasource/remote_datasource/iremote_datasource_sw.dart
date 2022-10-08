import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/data/model/report_model.dart';

abstract class IRemoteDatasourceSW {
  Future<StarWarsState> getPage(String page);
  Future<String> reportSighting(ReportModel report);
}
