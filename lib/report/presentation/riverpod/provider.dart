import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:star_wars_app/report/data/datasource/remote_datasource/iremote_datasource_reports.dart';
import 'package:star_wars_app/report/data/datasource/remote_datasource/remote_datasource_reports.dart';
import 'package:star_wars_app/report/data/hive_model/report_state.dart';
import 'package:star_wars_app/report/data/repository/reports_repository.dart';
import 'package:star_wars_app/report/domain/repository/ireports_repository.dart';
import 'package:star_wars_app/report/domain/usecases/get_reports.dart';
import 'package:star_wars_app/report/domain/usecases/iget_reports.dart';
import 'package:star_wars_app/report/domain/usecases/ireport_sighting.dart';
import 'package:star_wars_app/report/domain/usecases/report_sighting.dart';

StateNotifierProvider<ReportStateNotifier, ReportState> reportProvider =
    StateNotifierProvider<ReportStateNotifier, ReportState>(
        ((ref) => ReportStateNotifier()));

class ReportStateNotifier extends StateNotifier<ReportState> {
  ReportStateNotifier() : super(const ReportState()) {
    getReports();
  }
  reportSighting(report) async {
    final IRemoteDatasourceReports swDatasource = RemoteDatasourceReports();
    final IReportsRepository swCharacterRepository =
        ReportsRepository(swDatasource);
    final IReportSighting reportSighting =
        ReportSighting(swCharacterRepository);
    final reportResponse = await reportSighting.reportSighting(report);
    state = state.copyWith(statusCode: reportResponse);
  }

  void getReports() async {
    state = state.copyWith(isLoading: true);
    final IRemoteDatasourceReports remoteDatasourceReports =
        RemoteDatasourceReports();
    final IReportsRepository reportsRepository =
        ReportsRepository(remoteDatasourceReports);
    final IGetReports getReports = GetReports(reportsRepository);
    final ReportState reports = await getReports.getReports();
    state = reports;
  }
}
