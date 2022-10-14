// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'report_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReportState _$ReportStateFromJson(Map<String, dynamic> json) {
  return _ReportState.fromJson(json);
}

/// @nodoc
class _$ReportStateTearOff {
  const _$ReportStateTearOff();

  _ReportState call({dynamic statusCode = "0"}) {
    return _ReportState(
      statusCode: statusCode,
    );
  }

  ReportState fromJson(Map<String, Object?> json) {
    return ReportState.fromJson(json);
  }
}

/// @nodoc
const $ReportState = _$ReportStateTearOff();

/// @nodoc
mixin _$ReportState {
// Aquí guardo la respuesta de la petición
  dynamic get statusCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReportStateCopyWith<ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStateCopyWith<$Res> {
  factory $ReportStateCopyWith(
          ReportState value, $Res Function(ReportState) then) =
      _$ReportStateCopyWithImpl<$Res>;
  $Res call({dynamic statusCode});
}

/// @nodoc
class _$ReportStateCopyWithImpl<$Res> implements $ReportStateCopyWith<$Res> {
  _$ReportStateCopyWithImpl(this._value, this._then);

  final ReportState _value;
  // ignore: unused_field
  final $Res Function(ReportState) _then;

  @override
  $Res call({
    Object? statusCode = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: statusCode == freezed
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$ReportStateCopyWith<$Res>
    implements $ReportStateCopyWith<$Res> {
  factory _$ReportStateCopyWith(
          _ReportState value, $Res Function(_ReportState) then) =
      __$ReportStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic statusCode});
}

/// @nodoc
class __$ReportStateCopyWithImpl<$Res> extends _$ReportStateCopyWithImpl<$Res>
    implements _$ReportStateCopyWith<$Res> {
  __$ReportStateCopyWithImpl(
      _ReportState _value, $Res Function(_ReportState) _then)
      : super(_value, (v) => _then(v as _ReportState));

  @override
  _ReportState get _value => super._value as _ReportState;

  @override
  $Res call({
    Object? statusCode = freezed,
  }) {
    return _then(_ReportState(
      statusCode: statusCode == freezed ? _value.statusCode : statusCode,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReportState implements _ReportState {
  const _$_ReportState({this.statusCode = "0"});

  factory _$_ReportState.fromJson(Map<String, dynamic> json) =>
      _$$_ReportStateFromJson(json);

  @JsonKey()
  @override // Aquí guardo la respuesta de la petición
  final dynamic statusCode;

  @override
  String toString() {
    return 'ReportState(statusCode: $statusCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportState &&
            const DeepCollectionEquality()
                .equals(other.statusCode, statusCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(statusCode));

  @JsonKey(ignore: true)
  @override
  _$ReportStateCopyWith<_ReportState> get copyWith =>
      __$ReportStateCopyWithImpl<_ReportState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReportStateToJson(this);
  }
}

abstract class _ReportState implements ReportState {
  const factory _ReportState({dynamic statusCode}) = _$_ReportState;

  factory _ReportState.fromJson(Map<String, dynamic> json) =
      _$_ReportState.fromJson;

  @override // Aquí guardo la respuesta de la petición
  dynamic get statusCode;
  @override
  @JsonKey(ignore: true)
  _$ReportStateCopyWith<_ReportState> get copyWith =>
      throw _privateConstructorUsedError;
}
