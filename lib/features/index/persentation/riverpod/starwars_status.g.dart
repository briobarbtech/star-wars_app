// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'starwars_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StarWarsStatus _$$_StarWarsStatusFromJson(Map<String, dynamic> json) =>
    _$_StarWarsStatus(
      characters: (json['characters'] as List<dynamic>?)
              ?.map((e) => CharacterModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      previous: json['previous'] as String? ?? "",
      next: json['next'] as String? ?? "",
    );

Map<String, dynamic> _$$_StarWarsStatusToJson(_$_StarWarsStatus instance) =>
    <String, dynamic>{
      'characters': instance.characters,
      'isLoading': instance.isLoading,
      'previous': instance.previous,
      'next': instance.next,
    };
