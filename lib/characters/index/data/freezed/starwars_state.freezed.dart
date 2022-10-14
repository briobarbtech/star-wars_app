// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starwars_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StarWarsState _$StarWarsStateFromJson(Map<String, dynamic> json) {
  return _StarWarsState.fromJson(json);
}

/// @nodoc
class _$StarWarsStateTearOff {
  const _$StarWarsStateTearOff();

  _StarWarsState call(
      {List<CharacterModel> characters = const [],
      bool isLoading = false,
      String previous = "",
      String next = "",
      dynamic menuState = MenuState.splashscreen}) {
    return _StarWarsState(
      characters: characters,
      isLoading: isLoading,
      previous: previous,
      next: next,
      menuState: menuState,
    );
  }

  StarWarsState fromJson(Map<String, Object?> json) {
    return StarWarsState.fromJson(json);
  }
}

/// @nodoc
const $StarWarsState = _$StarWarsStateTearOff();

/// @nodoc
mixin _$StarWarsState {
// Aquí guardo la lista de personajes actual
  List<CharacterModel> get characters =>
      throw _privateConstructorUsedError; // Este parametro me sirve para manejar las pantallas de carga
  bool get isLoading =>
      throw _privateConstructorUsedError; // Aqupi guardo la dirección a la lista anterior
  String get previous =>
      throw _privateConstructorUsedError; // Aquí guardo la dirección a la lista siguiente
  String get next => throw _privateConstructorUsedError;
  dynamic get menuState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarWarsStateCopyWith<StarWarsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarWarsStateCopyWith<$Res> {
  factory $StarWarsStateCopyWith(
          StarWarsState value, $Res Function(StarWarsState) then) =
      _$StarWarsStateCopyWithImpl<$Res>;
  $Res call(
      {List<CharacterModel> characters,
      bool isLoading,
      String previous,
      String next,
      dynamic menuState});
}

/// @nodoc
class _$StarWarsStateCopyWithImpl<$Res>
    implements $StarWarsStateCopyWith<$Res> {
  _$StarWarsStateCopyWithImpl(this._value, this._then);

  final StarWarsState _value;
  // ignore: unused_field
  final $Res Function(StarWarsState) _then;

  @override
  $Res call({
    Object? characters = freezed,
    Object? isLoading = freezed,
    Object? previous = freezed,
    Object? next = freezed,
    Object? menuState = freezed,
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
      menuState: menuState == freezed
          ? _value.menuState
          : menuState // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$StarWarsStateCopyWith<$Res>
    implements $StarWarsStateCopyWith<$Res> {
  factory _$StarWarsStateCopyWith(
          _StarWarsState value, $Res Function(_StarWarsState) then) =
      __$StarWarsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CharacterModel> characters,
      bool isLoading,
      String previous,
      String next,
      dynamic menuState});
}

/// @nodoc
class __$StarWarsStateCopyWithImpl<$Res>
    extends _$StarWarsStateCopyWithImpl<$Res>
    implements _$StarWarsStateCopyWith<$Res> {
  __$StarWarsStateCopyWithImpl(
      _StarWarsState _value, $Res Function(_StarWarsState) _then)
      : super(_value, (v) => _then(v as _StarWarsState));

  @override
  _StarWarsState get _value => super._value as _StarWarsState;

  @override
  $Res call({
    Object? characters = freezed,
    Object? isLoading = freezed,
    Object? previous = freezed,
    Object? next = freezed,
    Object? menuState = freezed,
  }) {
    return _then(_StarWarsState(
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
      menuState: menuState == freezed ? _value.menuState : menuState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StarWarsState implements _StarWarsState {
  const _$_StarWarsState(
      {this.characters = const [],
      this.isLoading = false,
      this.previous = "",
      this.next = "",
      this.menuState = MenuState.splashscreen});

  factory _$_StarWarsState.fromJson(Map<String, dynamic> json) =>
      _$$_StarWarsStateFromJson(json);

  @JsonKey()
  @override // Aquí guardo la lista de personajes actual
  final List<CharacterModel> characters;
  @JsonKey()
  @override // Este parametro me sirve para manejar las pantallas de carga
  final bool isLoading;
  @JsonKey()
  @override // Aqupi guardo la dirección a la lista anterior
  final String previous;
  @JsonKey()
  @override // Aquí guardo la dirección a la lista siguiente
  final String next;
  @JsonKey()
  @override
  final dynamic menuState;

  @override
  String toString() {
    return 'StarWarsState(characters: $characters, isLoading: $isLoading, previous: $previous, next: $next, menuState: $menuState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StarWarsState &&
            const DeepCollectionEquality()
                .equals(other.characters, characters) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other.next, next) &&
            const DeepCollectionEquality().equals(other.menuState, menuState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(characters),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(next),
      const DeepCollectionEquality().hash(menuState));

  @JsonKey(ignore: true)
  @override
  _$StarWarsStateCopyWith<_StarWarsState> get copyWith =>
      __$StarWarsStateCopyWithImpl<_StarWarsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarWarsStateToJson(this);
  }
}

abstract class _StarWarsState implements StarWarsState {
  const factory _StarWarsState(
      {List<CharacterModel> characters,
      bool isLoading,
      String previous,
      String next,
      dynamic menuState}) = _$_StarWarsState;

  factory _StarWarsState.fromJson(Map<String, dynamic> json) =
      _$_StarWarsState.fromJson;

  @override // Aquí guardo la lista de personajes actual
  List<CharacterModel> get characters;
  @override // Este parametro me sirve para manejar las pantallas de carga
  bool get isLoading;
  @override // Aqupi guardo la dirección a la lista anterior
  String get previous;
  @override // Aquí guardo la dirección a la lista siguiente
  String get next;
  @override
  dynamic get menuState;
  @override
  @JsonKey(ignore: true)
  _$StarWarsStateCopyWith<_StarWarsState> get copyWith =>
      throw _privateConstructorUsedError;
}
