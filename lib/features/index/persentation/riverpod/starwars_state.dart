import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';

part 'starwars_state.freezed.dart';
part 'starwars_state.g.dart';

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
      @Default("") String next}) = _StarWarsState;

  factory StarWarsState.fromJson(Map<String, dynamic> json) =>
      _$StarWarsStateFromJson(json);
}
