import 'package:star_wars_app/report/domain/repository/ireports_repository.dart';
import 'package:star_wars_app/report/domain/usecases/idelete_report.dart';

class DeleteReport implements IDeleteReport {
  IReportsRepository reportsRepository;
  DeleteReport(this.reportsRepository);
  @override
  Future<String> deleteReports(item) {
    return reportsRepository.deleteReports(item);
  }
}
