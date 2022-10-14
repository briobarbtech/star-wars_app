import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:star_wars_app/report/data/model/report_model.dart';

part 'report_state.freezed.dart';
part 'report_state.g.dart';

@Freezed()
class ReportState with _$ReportState {
  const factory ReportState(
      // Defino los parametros de la clase con valores por defecto

      {
    @Default([]) List<ReportModel> reports,
    @Default(false) bool isLoading,
    @Default("0") statusCode,
  }) = _ReportState;

  factory ReportState.fromJson(Map<String, dynamic> json) =>
      _$ReportStateFromJson(json);
}
