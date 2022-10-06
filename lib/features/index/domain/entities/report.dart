abstract class Report {
  Report({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  String userId;
  String id;
  String title;
  String body;
}
