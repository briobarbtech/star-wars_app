import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/datasource/local_storage_datasource_sw.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';
import 'package:star_wars_app/features/index/persentation/riverpod/starwars_state.dart';

class RemoteDatasourceSW extends IRemoteDatasourceSW {
  @override
  Future<StarWarsState> getPage(String page) async {
    // Abro la base de datos local para verificar si la pagina que busco está en memoria
    final boxHive = await Hive.openBox('starwars');
    if (boxHive.containsKey(page)) {
      //("Encontrado en local Storage");
      // Si está la traigo y la convierto en un objeto StarWarsState y la devuelvo al repositorio que llamó la función
      var starWarsState = LocalStorageDatasourceSW().changePage(page);
      return starWarsState;
    } else {
      // sino hago la petición a la api
      Response response = await Dio().get(page);
      if (response.statusCode == 200) {
        // Creo el objeto con la respuesta de la API
        List result = response.data['results'];
        StarWarsState starWarsState = StarWarsState(
            characters: result.map((e) => CharacterModel.fromJson(e)).toList(),
            isLoading: false,
            previous: response.data['previous'].toString(),
            next: response.data['next'].toString());
        //y tambien lo guardo en localStorage para no repetir está petición y devuelvo el resultado
        LocalStorageDatasourceSW().saveStarWarsStates(page, starWarsState);
        return starWarsState;
      } else {
        // Si no está el recurso en una u otra fuente de datos devuelvo una Excepción
        throw Exception(response);
      }
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
