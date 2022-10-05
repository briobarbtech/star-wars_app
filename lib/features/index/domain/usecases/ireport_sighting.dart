import 'package:dartz/dartz.dart';
import 'package:star_wars_app/core/failure/failure.dart';
import 'package:star_wars_app/features/index/data/model/report_model.dart';

abstract class IReportSighting {
  Future<Either<Failure, String>> reportSighting(ReportModel report);
}
