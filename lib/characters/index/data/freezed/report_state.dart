import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_state.freezed.dart';
part 'report_state.g.dart';

@Freezed()
class ReportState with _$ReportState {
  const factory ReportState(
      {
      // Aquí guardo la respuesta de la petición
      @Default("0") statusCode}) = _ReportState;

  factory ReportState.fromJson(Map<String, dynamic> json) =>
      _$ReportStateFromJson(json);
}
