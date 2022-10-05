import 'package:dartz/dartz.dart';
import 'package:star_wars_app/core/failure/failure.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/entities/character.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

abstract class IRemoteDatasourceSW {
  Future<List<Character>> getAllCharacters();
  Future<StarWarsStatus> getPage(String page);
  Future<Either<Failure, String>> reportSighting(ReportModel report);
}
