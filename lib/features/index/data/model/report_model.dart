import 'package:star_wars_app/features/index/domain/entities/report.dart';

class ReportModel implements Report {
  ReportModel(
      {required this.id,
      required this.name,
      required this.price,
      required this.quantity});

  @override
  int id;
  @override
  String name;
  @override
  String price;
  @override
  String quantity;

  factory ReportModel.fromJson(Map<String, dynamic> json) => ReportModel(
      id: json["id"],
      name: json["name"],
      price: json["price"].toString(),
      quantity: json["quantity"].toString());

  Map<String, dynamic> toJson() =>
      {"name": name, "price": price, "quantity": quantity};
}
