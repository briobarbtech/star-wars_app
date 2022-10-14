// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReportState _$$_ReportStateFromJson(Map<String, dynamic> json) =>
    _$_ReportState(
      reports: (json['reports'] as List<dynamic>?)
              ?.map((e) => ReportModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      statusCode: json['statusCode'] ?? "0",
    );

Map<String, dynamic> _$$_ReportStateToJson(_$_ReportState instance) =>
    <String, dynamic>{
      'reports': instance.reports,
      'isLoading': instance.isLoading,
      'statusCode': instance.statusCode,
    };
