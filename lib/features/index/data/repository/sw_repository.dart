import 'package:dartz/dartz.dart';
import 'package:star_wars_app/core/failure/failure.dart';
import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/domain/entities/report.dart';
import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

class StarWarsRepository extends IStarWarsRepository {
  IRemoteDatasourceSW remoteDatasourceSW;
  StarWarsRepository(this.remoteDatasourceSW);
  @override
  Future<List<Character>> getAllCharacters() {
    return remoteDatasourceSW.getAllCharacters();
  }

  @override
  Future<StarWarsState> getPage(String page) {
    return remoteDatasourceSW.getPage(page);
  }

  @override
  Future<Either<Failure, String>> reportSighting(ReportModel report) {
    return remoteDatasourceSW.reportSighting(report);
  }
}
