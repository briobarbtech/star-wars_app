import 'package:star_wars_app/features/index/domain/entities/report.dart';

class ReportModel implements Report {
  ReportModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  @override
  int userId;
  @override
  int id;
  @override
  String title;
  @override
  String body;

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
