import 'package:star_wars_app/core/endpoints/endpoints.dart';
import 'package:star_wars_app/report/data/datasource/remote_datasource/iremote_datasource_reports.dart';
import 'package:dio/dio.dart';
import 'package:star_wars_app/report/data/hive_model/report_state.dart';
import 'package:star_wars_app/report/data/model/report_model.dart';

class RemoteDatasourceReports extends IRemoteDatasourceReports {
  @override
  Future<String> reportSighting(report) async {
    try {
      Response response =
          await Dio().post(Endpoints.reportEndpoint, data: report.toJson());
      final String statusCode = response.statusCode.toString();
      return statusCode;
    } catch (e) {
      throw Exception((e) => {print(e)});
    }
  }

  @override
  Future<ReportState> getReports() async {
    try {
      Response response = await Dio().get(Endpoints.reportEndpoint);
      List reports = response.data;
      return ReportState(
          isLoading: false,
          statusCode: response.statusCode,
          reports: reports.map((e) => ReportModel.fromJson(e)).toList());
    } catch (e) {
      throw Exception(e);
    }
  }
}
