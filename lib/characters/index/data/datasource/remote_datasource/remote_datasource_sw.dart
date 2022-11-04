import 'package:dio/dio.dart';
import 'package:star_wars_app/characters/index/data/datasource/remote_datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/characters/index/data/freezed/starwars_state.dart';
import 'package:star_wars_app/characters/index/data/model/character_model.dart';
import 'package:star_wars_app/characters/index/data/model/planet_model.dart';
import 'package:star_wars_app/characters/index/domain/entities/planet.dart';

class RemoteDatasourceSW extends IRemoteDatasourceSW {
  @override
  Future<StarWarsState> getPage(String page) async {
    try {
      // hago la petición a la api a través de Dio
      Response response = await Dio().get(page);
      // Guardo la respuesta en una variable de tipo Lista para luego poder recorrerla
      List result = response.data['results'];
      // Construyo el objeto StarWarsState con la información recibida. Y recorro la lista creada anteriormente para añadirlo al atributo characters
      StarWarsState starWarsState = StarWarsState(
          characters: result.map((e) => CharacterModel.fromJson(e)).toList(),
          isLoading: false,
          previous: response.data['previous'],
          next: response.data['next']);
      // Devuelvo el objeto anteriormente construido
      return starWarsState;
    } catch (e) {
      throw Exception(e);
    }
  }

  @override
  Future<Planet> getPlanet(String url) async {
    try {
      Response response = await Dio().get(url);
      Planet result = PlanetModel.fromJson(response.data);
      return result;
    } catch (e) {
      throw Exception(e);
    }
  }
}

/*  */