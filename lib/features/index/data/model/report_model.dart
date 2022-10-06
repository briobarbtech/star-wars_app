class ReportModel {
  ReportModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  String userId;
  String id;
  String title;
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
