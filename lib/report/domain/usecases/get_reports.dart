import 'package:star_wars_app/report/data/hive_model/report_state.dart';
import 'package:star_wars_app/report/domain/repository/ireports_repository.dart';
import 'package:star_wars_app/report/domain/usecases/iget_reports.dart';

class GetReports extends IGetReports {
  IReportsRepository reportsRepository;
  GetReports(this.reportsRepository);
  @override
  Future<ReportState> getReports() {
    return reportsRepository.getReports();
  }
}
