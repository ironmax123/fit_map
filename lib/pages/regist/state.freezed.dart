// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistState {
  LatLng get startPoint => throw _privateConstructorUsedError;
  LatLng get goalPoint => throw _privateConstructorUsedError;
  int get totalDist => throw _privateConstructorUsedError;

  /// Create a copy of RegistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistStateCopyWith<RegistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistStateCopyWith<$Res> {
  factory $RegistStateCopyWith(
          RegistState value, $Res Function(RegistState) then) =
      _$RegistStateCopyWithImpl<$Res, RegistState>;
  @useResult
  $Res call({LatLng startPoint, LatLng goalPoint, int totalDist});
}

/// @nodoc
class _$RegistStateCopyWithImpl<$Res, $Val extends RegistState>
    implements $RegistStateCopyWith<$Res> {
  _$RegistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPoint = null,
    Object? goalPoint = null,
    Object? totalDist = null,
  }) {
    return _then(_value.copyWith(
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as LatLng,
      goalPoint: null == goalPoint
          ? _value.goalPoint
          : goalPoint // ignore: cast_nullable_to_non_nullable
              as LatLng,
      totalDist: null == totalDist
          ? _value.totalDist
          : totalDist // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistStateImplCopyWith<$Res>
    implements $RegistStateCopyWith<$Res> {
  factory _$$RegistStateImplCopyWith(
          _$RegistStateImpl value, $Res Function(_$RegistStateImpl) then) =
      __$$RegistStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LatLng startPoint, LatLng goalPoint, int totalDist});
}

/// @nodoc
class __$$RegistStateImplCopyWithImpl<$Res>
    extends _$RegistStateCopyWithImpl<$Res, _$RegistStateImpl>
    implements _$$RegistStateImplCopyWith<$Res> {
  __$$RegistStateImplCopyWithImpl(
      _$RegistStateImpl _value, $Res Function(_$RegistStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPoint = null,
    Object? goalPoint = null,
    Object? totalDist = null,
  }) {
    return _then(_$RegistStateImpl(
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as LatLng,
      goalPoint: null == goalPoint
          ? _value.goalPoint
          : goalPoint // ignore: cast_nullable_to_non_nullable
              as LatLng,
      totalDist: null == totalDist
          ? _value.totalDist
          : totalDist // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RegistStateImpl implements _RegistState {
  const _$RegistStateImpl(
      {this.startPoint = const LatLng(0, 0),
      this.goalPoint = const LatLng(0, 0),
      this.totalDist = 0});

  @override
  @JsonKey()
  final LatLng startPoint;
  @override
  @JsonKey()
  final LatLng goalPoint;
  @override
  @JsonKey()
  final int totalDist;

  @override
  String toString() {
    return 'RegistState(startPoint: $startPoint, goalPoint: $goalPoint, totalDist: $totalDist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistStateImpl &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.goalPoint, goalPoint) ||
                other.goalPoint == goalPoint) &&
            (identical(other.totalDist, totalDist) ||
                other.totalDist == totalDist));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, startPoint, goalPoint, totalDist);

  /// Create a copy of RegistState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistStateImplCopyWith<_$RegistStateImpl> get copyWith =>
      __$$RegistStateImplCopyWithImpl<_$RegistStateImpl>(this, _$identity);
}

abstract class _RegistState implements RegistState {
  const factory _RegistState(
      {final LatLng startPoint,
      final LatLng goalPoint,
      final int totalDist}) = _$RegistStateImpl;

  @override
  LatLng get startPoint;
  @override
  LatLng get goalPoint;
  @override
  int get totalDist;

  /// Create a copy of RegistState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistStateImplCopyWith<_$RegistStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
