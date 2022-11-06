import 'package:intl/intl.dart';
import 'package:star_wars_app/characters/index/domain/entities/character.dart';
import 'package:star_wars_app/report/domain/entities/report.dart';

class ReportModel implements Report {
  ReportModel(
      {required this.name,
      required this.title,
      required this.body,
      required this.date,
      required this.publish});

  @override
  String name;
  @override
  String title;
  @override
  String body;
  @override
  DateTime date = DateTime.now();
  @override
  bool publish;

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
      name: json["name"],
      title: json["title"],
      body: json["body"],
      date: DateFormat("yyyy-MM-dd HH:mm").parse(json["date"]),
      publish: json["publish"]);

  factory ReportModel.fromCharacterObject(Character character) => ReportModel(
      name: character.name,
      title: "¡Hemos avistado un personaje!",
      body:
          "El personaje que hemos avistado ha sido el siguiente: ${character.name}",
      date: DateTime.now(),
      publish: true);
  Map<String, dynamic> toJson() => {
        "name": name,
        "title": title,
        "body": body,
        "date": DateFormat("yyyy-MM-dd HH:mm").format(date),
        "publish": publish
      };
}
