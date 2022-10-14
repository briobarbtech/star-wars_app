import 'package:star_wars_app/report/domain/repository/ireports_repository.dart';
import 'package:star_wars_app/report/domain/usecases/ireport_sighting.dart';

class ReportSighting extends IReportSighting {
  IReportsRepository starWarsRepository;
  ReportSighting(this.starWarsRepository);
  @override
  Future<String> reportSighting(report) {
    return starWarsRepository.reportSighting(report);
  }
}
