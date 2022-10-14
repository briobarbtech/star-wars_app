import 'package:star_wars_app/report/data/datasource/remote_datasource/iremote_datasource_reports.dart';
import 'package:star_wars_app/report/data/hive_model/report_state.dart';
import 'package:star_wars_app/report/domain/repository/ireports_repository.dart';

class ReportsRepository extends IReportsRepository {
  IRemoteDatasourceReports remoteDatasourceReports;
  ReportsRepository(this.remoteDatasourceReports);
  @override
  Future<String> reportSighting(report) {
    return remoteDatasourceReports.reportSighting(report);
  }

  @override
  Future<ReportState> getReports() {
    return remoteDatasourceReports.getReports();
  }
}
