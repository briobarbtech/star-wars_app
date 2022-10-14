import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_wars_app/characters/index/data/hive/model/starwars_state_hive.dart';
import 'package:star_wars_app/characters/index/data/model/character_model.dart';

part 'starwars_state.freezed.dart';
part 'starwars_state.g.dart';

enum MenuState { menu, report, splashscreen }

@Freezed()
class StarWarsState with _$StarWarsState {
  const factory StarWarsState(
      // Defino los parametros de la clase con valores por defecto

      {
      // Aquí guardo la lista de personajes actual
      @Default([]) List<CharacterModel> characters,
      // Este parametro me sirve para manejar las pantallas de carga
      @Default(false) bool isLoading,
      // Aqupi guardo la dirección a la lista anterior
      @Default("") String previous,
      // Aquí guardo la dirección a la lista siguiente
      @Default("") String next,
      @Default(MenuState.splashscreen) menuState}) = _StarWarsState;

  factory StarWarsState.fromJson(Map<String, dynamic> json) =>
      _$StarWarsStateFromJson(json);
  // Defino un método que construye un objeto StarWarsState desde un StarWarsStateHive
  factory StarWarsState.fromHiveObject(StarWarsStateHive starWarsStateHive) =>
      StarWarsState(
          characters: starWarsStateHive.listCharacter
              .map((e) => CharacterModel.fromJson(e))
              .toList(),
          previous: starWarsStateHive.previous,
          next: starWarsStateHive.next);
}
