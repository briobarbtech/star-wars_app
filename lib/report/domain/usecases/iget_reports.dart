import 'package:star_wars_app/report/data/hive_model/report_state.dart';

abstract class IGetReports {
  Future<ReportState> getReports();
}
