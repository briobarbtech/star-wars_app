import 'package:dio/dio.dart';
import 'package:star_wars_app/characters/index/data/datasource/remote_datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/characters/index/data/model/character_model.dart';

class RemoteDatasourceSW extends IRemoteDatasourceSW {
  @override
  Future<StarWarsState> getPage(String page) async {
    // hago la petición a la api
    Response response = await Dio().get(page);
    if (response.statusCode == 200) {
      // Creo el objeto con la respuesta de la API
      List result = response.data['results'];
      StarWarsState starWarsState = StarWarsState(
          characters: result.map((e) => CharacterModel.fromJson(e)).toList(),
          isLoading: false,
          previous: response.data['previous'].toString(),
          next: response.data['next'].toString());
      return starWarsState;
    } else {
      // Si no está el recurso en una u otra fuente de datos devuelvo una Excepción
      throw Exception(response);
    }
  }

  @override
  Future<String> reportSighting(report) async {
    Response response =
        await Dio().post(Endpoints.reportEndpoint, data: report.toJson());

    final String statusCode = response.statusCode.toString();
    return statusCode;
  }
}
