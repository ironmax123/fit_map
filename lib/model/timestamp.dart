import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime?, String?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(String? json) => json == null
      ? null
      : DateTime.fromMillisecondsSinceEpoch(int.parse(json));

  @override
  String? toJson(DateTime? object) => object?.millisecondsSinceEpoch.toString();
}
