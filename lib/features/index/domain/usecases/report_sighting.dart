import 'package:star_wars_app/features/index/data/datasource/iremote_datasource_sw.dart';
import 'package:star_wars_app/features/index/domain/entities/report.dart';
import 'package:star_wars_app/features/index/domain/usecases/ireport_sighting.dart';

class ReportSighting extends IReportSighting {
  IRemoteDatasourceSW remoteDatasourceSW;
  ReportSighting(this.remoteDatasourceSW);
  @override
  Future<dynamic> reportSighting(Report report) {
    return remoteDatasourceSW.reportSighting(report);
  }
}
