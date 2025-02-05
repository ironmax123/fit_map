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

RegistEntity _$RegistEntityFromJson(Map<String, dynamic> json) {
  return _RegistEntity.fromJson(json);
}

/// @nodoc
mixin _$RegistEntity {
  String? get StartPoint => throw _privateConstructorUsedError;
  String? get GoalPoint => throw _privateConstructorUsedError;
  double get totalDist => throw _privateConstructorUsedError;

  /// Serializes this RegistEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RegistEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistEntityCopyWith<RegistEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistEntityCopyWith<$Res> {
  factory $RegistEntityCopyWith(
          RegistEntity value, $Res Function(RegistEntity) then) =
      _$RegistEntityCopyWithImpl<$Res, RegistEntity>;
  @useResult
  $Res call({String? StartPoint, String? GoalPoint, double totalDist});
}

/// @nodoc
class _$RegistEntityCopyWithImpl<$Res, $Val extends RegistEntity>
    implements $RegistEntityCopyWith<$Res> {
  _$RegistEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? StartPoint = freezed,
    Object? GoalPoint = freezed,
    Object? totalDist = null,
  }) {
    return _then(_value.copyWith(
      StartPoint: freezed == StartPoint
          ? _value.StartPoint
          : StartPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      GoalPoint: freezed == GoalPoint
          ? _value.GoalPoint
          : GoalPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDist: null == totalDist
          ? _value.totalDist
          : totalDist // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistEntityImplCopyWith<$Res>
    implements $RegistEntityCopyWith<$Res> {
  factory _$$RegistEntityImplCopyWith(
          _$RegistEntityImpl value, $Res Function(_$RegistEntityImpl) then) =
      __$$RegistEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? StartPoint, String? GoalPoint, double totalDist});
}

/// @nodoc
class __$$RegistEntityImplCopyWithImpl<$Res>
    extends _$RegistEntityCopyWithImpl<$Res, _$RegistEntityImpl>
    implements _$$RegistEntityImplCopyWith<$Res> {
  __$$RegistEntityImplCopyWithImpl(
      _$RegistEntityImpl _value, $Res Function(_$RegistEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? StartPoint = freezed,
    Object? GoalPoint = freezed,
    Object? totalDist = null,
  }) {
    return _then(_$RegistEntityImpl(
      StartPoint: freezed == StartPoint
          ? _value.StartPoint
          : StartPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      GoalPoint: freezed == GoalPoint
          ? _value.GoalPoint
          : GoalPoint // ignore: cast_nullable_to_non_nullable
              as String?,
      totalDist: null == totalDist
          ? _value.totalDist
          : totalDist // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistEntityImpl implements _RegistEntity {
  const _$RegistEntityImpl(
      {required this.StartPoint,
      required this.GoalPoint,
      required this.totalDist});

  factory _$RegistEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RegistEntityImplFromJson(json);

  @override
  final String? StartPoint;
  @override
  final String? GoalPoint;
  @override
  final double totalDist;

  @override
  String toString() {
    return 'RegistEntity(StartPoint: $StartPoint, GoalPoint: $GoalPoint, totalDist: $totalDist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistEntityImpl &&
            (identical(other.StartPoint, StartPoint) ||
                other.StartPoint == StartPoint) &&
            (identical(other.GoalPoint, GoalPoint) ||
                other.GoalPoint == GoalPoint) &&
            (identical(other.totalDist, totalDist) ||
                other.totalDist == totalDist));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, StartPoint, GoalPoint, totalDist);

  /// Create a copy of RegistEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistEntityImplCopyWith<_$RegistEntityImpl> get copyWith =>
      __$$RegistEntityImplCopyWithImpl<_$RegistEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistEntityImplToJson(
      this,
    );
  }
}

abstract class _RegistEntity implements RegistEntity {
  const factory _RegistEntity(
      {required final String? StartPoint,
      required final String? GoalPoint,
      required final double totalDist}) = _$RegistEntityImpl;

  factory _RegistEntity.fromJson(Map<String, dynamic> json) =
      _$RegistEntityImpl.fromJson;

  @override
  String? get StartPoint;
  @override
  String? get GoalPoint;
  @override
  double get totalDist;

  /// Create a copy of RegistEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistEntityImplCopyWith<_$RegistEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
