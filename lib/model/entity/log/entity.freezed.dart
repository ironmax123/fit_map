// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

logEntity _$logEntityFromJson(Map<String, dynamic> json) {
  return _logEntity.fromJson(json);
}

/// @nodoc
mixin _$logEntity {
  double? get dvancedDist => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this logEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of logEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $logEntityCopyWith<logEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $logEntityCopyWith<$Res> {
  factory $logEntityCopyWith(logEntity value, $Res Function(logEntity) then) =
      _$logEntityCopyWithImpl<$Res, logEntity>;
  @useResult
  $Res call({double? dvancedDist, @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class _$logEntityCopyWithImpl<$Res, $Val extends logEntity>
    implements $logEntityCopyWith<$Res> {
  _$logEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of logEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dvancedDist = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      dvancedDist: freezed == dvancedDist
          ? _value.dvancedDist
          : dvancedDist // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$logEntityImplCopyWith<$Res>
    implements $logEntityCopyWith<$Res> {
  factory _$$logEntityImplCopyWith(
          _$logEntityImpl value, $Res Function(_$logEntityImpl) then) =
      __$$logEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? dvancedDist, @TimestampConverter() DateTime? createdAt});
}

/// @nodoc
class __$$logEntityImplCopyWithImpl<$Res>
    extends _$logEntityCopyWithImpl<$Res, _$logEntityImpl>
    implements _$$logEntityImplCopyWith<$Res> {
  __$$logEntityImplCopyWithImpl(
      _$logEntityImpl _value, $Res Function(_$logEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of logEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dvancedDist = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$logEntityImpl(
      dvancedDist: freezed == dvancedDist
          ? _value.dvancedDist
          : dvancedDist // ignore: cast_nullable_to_non_nullable
              as double?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$logEntityImpl implements _logEntity {
  const _$logEntityImpl(
      {this.dvancedDist, @TimestampConverter() this.createdAt});

  factory _$logEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$logEntityImplFromJson(json);

  @override
  final double? dvancedDist;
  @override
  @TimestampConverter()
  final DateTime? createdAt;

  @override
  String toString() {
    return 'logEntity(dvancedDist: $dvancedDist, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$logEntityImpl &&
            (identical(other.dvancedDist, dvancedDist) ||
                other.dvancedDist == dvancedDist) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dvancedDist, createdAt);

  /// Create a copy of logEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$logEntityImplCopyWith<_$logEntityImpl> get copyWith =>
      __$$logEntityImplCopyWithImpl<_$logEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$logEntityImplToJson(
      this,
    );
  }
}

abstract class _logEntity implements logEntity {
  const factory _logEntity(
      {final double? dvancedDist,
      @TimestampConverter() final DateTime? createdAt}) = _$logEntityImpl;

  factory _logEntity.fromJson(Map<String, dynamic> json) =
      _$logEntityImpl.fromJson;

  @override
  double? get dvancedDist;
  @override
  @TimestampConverter()
  DateTime? get createdAt;

  /// Create a copy of logEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$logEntityImplCopyWith<_$logEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
