// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConnectionStateSW _$ConnectionStateSWFromJson(Map<String, dynamic> json) {
  return _ConnectionStateSW.fromJson(json);
}

/// @nodoc
class _$ConnectionStateSWTearOff {
  const _$ConnectionStateSWTearOff();

  _ConnectionStateSW call({dynamic switchState = false}) {
    return _ConnectionStateSW(
      switchState: switchState,
    );
  }

  ConnectionStateSW fromJson(Map<String, Object?> json) {
    return ConnectionStateSW.fromJson(json);
  }
}

/// @nodoc
const $ConnectionStateSW = _$ConnectionStateSWTearOff();

/// @nodoc
mixin _$ConnectionStateSW {
// Aquí guardo el estado del switch
  dynamic get switchState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConnectionStateSWCopyWith<ConnectionStateSW> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateSWCopyWith<$Res> {
  factory $ConnectionStateSWCopyWith(
          ConnectionStateSW value, $Res Function(ConnectionStateSW) then) =
      _$ConnectionStateSWCopyWithImpl<$Res>;
  $Res call({dynamic switchState});
}

/// @nodoc
class _$ConnectionStateSWCopyWithImpl<$Res>
    implements $ConnectionStateSWCopyWith<$Res> {
  _$ConnectionStateSWCopyWithImpl(this._value, this._then);

  final ConnectionStateSW _value;
  // ignore: unused_field
  final $Res Function(ConnectionStateSW) _then;

  @override
  $Res call({
    Object? switchState = freezed,
  }) {
    return _then(_value.copyWith(
      switchState: switchState == freezed
          ? _value.switchState
          : switchState // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ConnectionStateSWCopyWith<$Res>
    implements $ConnectionStateSWCopyWith<$Res> {
  factory _$ConnectionStateSWCopyWith(
          _ConnectionStateSW value, $Res Function(_ConnectionStateSW) then) =
      __$ConnectionStateSWCopyWithImpl<$Res>;
  @override
  $Res call({dynamic switchState});
}

/// @nodoc
class __$ConnectionStateSWCopyWithImpl<$Res>
    extends _$ConnectionStateSWCopyWithImpl<$Res>
    implements _$ConnectionStateSWCopyWith<$Res> {
  __$ConnectionStateSWCopyWithImpl(
      _ConnectionStateSW _value, $Res Function(_ConnectionStateSW) _then)
      : super(_value, (v) => _then(v as _ConnectionStateSW));

  @override
  _ConnectionStateSW get _value => super._value as _ConnectionStateSW;

  @override
  $Res call({
    Object? switchState = freezed,
  }) {
    return _then(_ConnectionStateSW(
      switchState: switchState == freezed ? _value.switchState : switchState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConnectionStateSW
    with DiagnosticableTreeMixin
    implements _ConnectionStateSW {
  const _$_ConnectionStateSW({this.switchState = false});

  factory _$_ConnectionStateSW.fromJson(Map<String, dynamic> json) =>
      _$$_ConnectionStateSWFromJson(json);

  @JsonKey()
  @override // Aquí guardo el estado del switch
  final dynamic switchState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectionStateSW(switchState: $switchState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectionStateSW'))
      ..add(DiagnosticsProperty('switchState', switchState));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConnectionStateSW &&
            const DeepCollectionEquality()
                .equals(other.switchState, switchState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(switchState));

  @JsonKey(ignore: true)
  @override
  _$ConnectionStateSWCopyWith<_ConnectionStateSW> get copyWith =>
      __$ConnectionStateSWCopyWithImpl<_ConnectionStateSW>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConnectionStateSWToJson(this);
  }
}

abstract class _ConnectionStateSW implements ConnectionStateSW {
  const factory _ConnectionStateSW({dynamic switchState}) =
      _$_ConnectionStateSW;

  factory _ConnectionStateSW.fromJson(Map<String, dynamic> json) =
      _$_ConnectionStateSW.fromJson;

  @override // Aquí guardo el estado del switch
  dynamic get switchState;
  @override
  @JsonKey(ignore: true)
  _$ConnectionStateSWCopyWith<_ConnectionStateSW> get copyWith =>
      throw _privateConstructorUsedError;
}
