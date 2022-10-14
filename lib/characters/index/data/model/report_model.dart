import 'package:star_wars_app/characters/index/domain/entities/character.dart';
import 'package:star_wars_app/characters/index/domain/entities/report.dart';

class ReportModel implements Report {
  ReportModel({
    required this.name,
    required this.title,
    required this.body,
  });

  @override
  String name;
  @override
  String title;
  @override
  String body;

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
        name: json["name"],
        title: json["title"],
        body: json["body"],
      );
  factory ReportModel.fromCharacterObject(Character character) => ReportModel(
        name: character.name,
        title: "¡Hemos avistado un personaje!",
        body:
            "El personaje que hemos avistado ha sido el siguiente: ${character.name}",
      );
  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "body": body,
      };
}
