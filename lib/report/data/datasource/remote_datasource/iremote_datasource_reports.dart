import 'package:star_wars_app/report/data/hive_model/report_state.dart';
import 'package:star_wars_app/report/data/model/report_model.dart';

abstract class IRemoteDatasourceReports {
  Future<String> reportSighting(ReportModel report);
  Future<ReportState> getReports();
}
