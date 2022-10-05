import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/ireport_sighting.dart';

class ReportSighting extends IReportSighting {
  IStarWarsRepository starWarsRepository;
  ReportSighting(this.starWarsRepository);
  @override
  Future<String> reportSighting(report) {
    return starWarsRepository.reportSighting(report);
  }
}
