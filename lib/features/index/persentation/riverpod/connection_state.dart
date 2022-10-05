import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection_state.freezed.dart';
part 'connection_state.g.dart';

@Freezed()
class ConnectionStateSW with _$ConnectionStateSW {
  const factory ConnectionStateSW(
      {
      // Aquí guardo el estado del switch
      @Default(false) switchState}) = _ConnectionStateSW;

  factory ConnectionStateSW.fromJson(Map<String, dynamic> json) =>
      _$ConnectionStateSWFromJson(json);
}
