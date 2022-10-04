// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starwars_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StarWarsStatus _$StarWarsStatusFromJson(Map<String, dynamic> json) {
  return _StarWarsStatus.fromJson(json);
}

/// @nodoc
class _$StarWarsStatusTearOff {
  const _$StarWarsStatusTearOff();

  _StarWarsStatus call(
      {List<CharacterModel> characters = const [],
      bool isLoading = false,
      String previous = "",
      String next = ""}) {
    return _StarWarsStatus(
      characters: characters,
      isLoading: isLoading,
      previous: previous,
      next: next,
    );
  }

  StarWarsStatus fromJson(Map<String, Object?> json) {
    return StarWarsStatus.fromJson(json);
  }
}

/// @nodoc
const $StarWarsStatus = _$StarWarsStatusTearOff();

/// @nodoc
mixin _$StarWarsStatus {
  List<CharacterModel> get characters => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String get previous => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarWarsStatusCopyWith<StarWarsStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarWarsStatusCopyWith<$Res> {
  factory $StarWarsStatusCopyWith(
          StarWarsStatus value, $Res Function(StarWarsStatus) then) =
      _$StarWarsStatusCopyWithImpl<$Res>;
  $Res call(
      {List<CharacterModel> characters,
      bool isLoading,
      String previous,
      String next});
}

/// @nodoc
class _$StarWarsStatusCopyWithImpl<$Res>
    implements $StarWarsStatusCopyWith<$Res> {
  _$StarWarsStatusCopyWithImpl(this._value, this._then);

  final StarWarsStatus _value;
  // ignore: unused_field
  final $Res Function(StarWarsStatus) _then;

  @override
  $Res call({
    Object? characters = freezed,
    Object? isLoading = freezed,
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_value.copyWith(
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StarWarsStatusCopyWith<$Res>
    implements $StarWarsStatusCopyWith<$Res> {
  factory _$StarWarsStatusCopyWith(
          _StarWarsStatus value, $Res Function(_StarWarsStatus) then) =
      __$StarWarsStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CharacterModel> characters,
      bool isLoading,
      String previous,
      String next});
}

/// @nodoc
class __$StarWarsStatusCopyWithImpl<$Res>
    extends _$StarWarsStatusCopyWithImpl<$Res>
    implements _$StarWarsStatusCopyWith<$Res> {
  __$StarWarsStatusCopyWithImpl(
      _StarWarsStatus _value, $Res Function(_StarWarsStatus) _then)
      : super(_value, (v) => _then(v as _StarWarsStatus));

  @override
  _StarWarsStatus get _value => super._value as _StarWarsStatus;

  @override
  $Res call({
    Object? characters = freezed,
    Object? isLoading = freezed,
    Object? previous = freezed,
    Object? next = freezed,
  }) {
    return _then(_StarWarsStatus(
      characters: characters == freezed
          ? _value.characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<CharacterModel>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      previous: previous == freezed
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StarWarsStatus implements _StarWarsStatus {
  const _$_StarWarsStatus(
      {this.characters = const [],
      this.isLoading = false,
      this.previous = "",
      this.next = ""});

  factory _$_StarWarsStatus.fromJson(Map<String, dynamic> json) =>
      _$$_StarWarsStatusFromJson(json);

  @JsonKey()
  @override
  final List<CharacterModel> characters;
  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final String previous;
  @JsonKey()
  @override
  final String next;

  @override
  String toString() {
    return 'StarWarsStatus(characters: $characters, isLoading: $isLoading, previous: $previous, next: $next)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StarWarsStatus &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other.next, next));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(next));

  @JsonKey(ignore: true)
  @override
  _$StarWarsStatusCopyWith<_StarWarsStatus> get copyWith =>
      __$StarWarsStatusCopyWithImpl<_StarWarsStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarWarsStatusToJson(this);
  }
}

abstract class _StarWarsStatus implements StarWarsStatus {
  const factory _StarWarsStatus(
      {List<CharacterModel> characters,
      bool isLoading,
      String previous,
      String next}) = _$_StarWarsStatus;

  factory _StarWarsStatus.fromJson(Map<String, dynamic> json) =
      _$_StarWarsStatus.fromJson;

  @override
  List<CharacterModel> get characters;
  @override
  bool get isLoading;
  @override
  String get previous;
  @override
  String get next;
  @override
  @JsonKey(ignore: true)
  _$StarWarsStatusCopyWith<_StarWarsStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
