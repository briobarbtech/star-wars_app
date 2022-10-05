import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/core/failure/failure.dart';
import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/entities/report.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_status.dart';

class RemoteDatasourceSW extends IRemoteDatasourceSW {
  @override
  Future<List<CharacterModel>> getAllCharacters() async {
    Response response = await Dio().get(Endpoints.swapiEndpoint);
    if (response.statusCode == 200) {
      final List result = response.data['results'];
      //print(result);
      return result.map((e) => CharacterModel.fromJson(e)).toList();
    } else {
      throw Exception(response);
    }
  }

  @override
  Future<StarWarsStatus> getPage(String page) async {
    Response response = await Dio().get(page);
    if (response.statusCode == 200) {
      final List result = response.data['results'];
      var previous = response.data['previous'].toString();
      var next = response.data['next'];
      return StarWarsStatus(
          characters: result.map((e) => CharacterModel.fromJson(e)).toList(),
          isLoading: false,
          previous: previous,
          next: next);
    } else {
      throw Exception(response);
    }
  }

  @override
  Future<Either<Failure, String>> reportSighting(ReportModel report) async {
    Response response =
        await Dio().post(Endpoints.reportEndpoint, data: report.toJson());
    ;

    final statusCode = response.statusCode.toString();
    //print(statusCode);
    return Right(statusCode);
  }
}
