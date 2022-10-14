// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menu_state_sw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenuStateSW _$MenuStateSWFromJson(Map<String, dynamic> json) {
  return _MenuStateSW.fromJson(json);
}

/// @nodoc
class _$MenuStateSWTearOff {
  const _$MenuStateSWTearOff();

  _MenuStateSW call({dynamic menuState = MenuState.menu}) {
    return _MenuStateSW(
      menuState: menuState,
    );
  }

  MenuStateSW fromJson(Map<String, Object?> json) {
    return MenuStateSW.fromJson(json);
  }
}

/// @nodoc
const $MenuStateSW = _$MenuStateSWTearOff();

/// @nodoc
mixin _$MenuStateSW {
// Aquí guardo el estado del switch
  dynamic get menuState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuStateSWCopyWith<MenuStateSW> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuStateSWCopyWith<$Res> {
  factory $MenuStateSWCopyWith(
          MenuStateSW value, $Res Function(MenuStateSW) then) =
      _$MenuStateSWCopyWithImpl<$Res>;
  $Res call({dynamic menuState});
}

/// @nodoc
class _$MenuStateSWCopyWithImpl<$Res> implements $MenuStateSWCopyWith<$Res> {
  _$MenuStateSWCopyWithImpl(this._value, this._then);

  final MenuStateSW _value;
  // ignore: unused_field
  final $Res Function(MenuStateSW) _then;

  @override
  $Res call({
    Object? menuState = freezed,
  }) {
    return _then(_value.copyWith(
      menuState: menuState == freezed
          ? _value.menuState
          : menuState // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$MenuStateSWCopyWith<$Res>
    implements $MenuStateSWCopyWith<$Res> {
  factory _$MenuStateSWCopyWith(
          _MenuStateSW value, $Res Function(_MenuStateSW) then) =
      __$MenuStateSWCopyWithImpl<$Res>;
  @override
  $Res call({dynamic menuState});
}

/// @nodoc
class __$MenuStateSWCopyWithImpl<$Res> extends _$MenuStateSWCopyWithImpl<$Res>
    implements _$MenuStateSWCopyWith<$Res> {
  __$MenuStateSWCopyWithImpl(
      _MenuStateSW _value, $Res Function(_MenuStateSW) _then)
      : super(_value, (v) => _then(v as _MenuStateSW));

  @override
  _MenuStateSW get _value => super._value as _MenuStateSW;

  @override
  $Res call({
    Object? menuState = freezed,
  }) {
    return _then(_MenuStateSW(
      menuState: menuState == freezed ? _value.menuState : menuState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenuStateSW implements _MenuStateSW {
  const _$_MenuStateSW({this.menuState = MenuState.menu});

  factory _$_MenuStateSW.fromJson(Map<String, dynamic> json) =>
      _$$_MenuStateSWFromJson(json);

  @JsonKey()
  @override // Aquí guardo el estado del switch
  final dynamic menuState;

  @override
  String toString() {
    return 'MenuStateSW(menuState: $menuState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MenuStateSW &&
            const DeepCollectionEquality().equals(other.menuState, menuState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(menuState));

  @JsonKey(ignore: true)
  @override
  _$MenuStateSWCopyWith<_MenuStateSW> get copyWith =>
      __$MenuStateSWCopyWithImpl<_MenuStateSW>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenuStateSWToJson(this);
  }
}

abstract class _MenuStateSW implements MenuStateSW {
  const factory _MenuStateSW({dynamic menuState}) = _$_MenuStateSW;

  factory _MenuStateSW.fromJson(Map<String, dynamic> json) =
      _$_MenuStateSW.fromJson;

  @override // Aquí guardo el estado del switch
  dynamic get menuState;
  @override
  @JsonKey(ignore: true)
  _$MenuStateSWCopyWith<_MenuStateSW> get copyWith =>
      throw _privateConstructorUsedError;
}
