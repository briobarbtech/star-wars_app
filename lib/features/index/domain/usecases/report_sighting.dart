import 'package:dartz/dartz.dart';
import 'package:star_wars_app/core/failure/failure.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';
import 'package:star_wars_app/features/index/domain/repository/isw_repository.dart';
import 'package:star_wars_app/features/index/domain/usecases/ireport_sighting.dart';

class ReportSighting extends IReportSighting {
  IStarWarsRepository starWarsRepository;
  ReportSighting(this.starWarsRepository);
  @override
  Future<Either<Failure, String>> reportSighting(ReportModel report) {
    return starWarsRepository.reportSighting(report);
  }
}
