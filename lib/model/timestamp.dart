import 'package:freezed_annotation/freezed_annotation.dart';

class TimestampConverter implements JsonConverter<DateTime?, int?> {
  const TimestampConverter();

  @override
  DateTime? fromJson(int? json) =>
      json == null ? null : DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int? toJson(DateTime? object) => object?.millisecondsSinceEpoch;
}
