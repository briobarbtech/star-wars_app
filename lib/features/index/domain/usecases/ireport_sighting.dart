import 'package:star_wars_app/features/index/domain/entities/report.dart';

abstract class IReportSighting {
  Future<dynamic> reportSighting(Report report);
}
