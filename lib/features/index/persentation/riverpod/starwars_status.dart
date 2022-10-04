import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_wars_app/features/index/data/model/character_model.dart';

part 'starwars_status.freezed.dart';
part 'starwars_status.g.dart';

@Freezed()
class StarWarsStatus with _$StarWarsStatus {
  const factory StarWarsStatus(
      {@Default([]) List<CharacterModel> characters,
      @Default(false) bool isLoading,
      @Default([]) List<CharacterModel> previous,
      @Default([]) List<CharacterModel> next}) = _StarWarsStatus;

  factory StarWarsStatus.fromJson(Map<String, dynamic> json) =>
      _$StarWarsStatusFromJson(json);
}
