// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StarWarsState _$$_StarWarsStateFromJson(Map<String, dynamic> json) =>
    _$_StarWarsState(
      characters: (json['characters'] as List<dynamic>?)
              ?.map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      previous: json['previous'] as String? ?? "",
      next: json['next'] as String? ?? "",
      menuState: json['menuState'] ?? MenuState.splashscreen,
    );

Map<String, dynamic> _$$_StarWarsStateToJson(_$_StarWarsState instance) =>
    <String, dynamic>{
      'characters': instance.characters,
      'isLoading': instance.isLoading,
      'previous': instance.previous,
      'next': instance.next,
      'menuState': instance.menuState,
    };
