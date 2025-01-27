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
mixin _$CheckState {
  String get startPoint => throw _privateConstructorUsedError;
  String get goalPoint => throw _privateConstructorUsedError;

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CheckStateCopyWith<CheckState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckStateCopyWith<$Res> {
  factory $CheckStateCopyWith(
          CheckState value, $Res Function(CheckState) then) =
      _$CheckStateCopyWithImpl<$Res, CheckState>;
  @useResult
  $Res call({String startPoint, String goalPoint});
}

/// @nodoc
class _$CheckStateCopyWithImpl<$Res, $Val extends CheckState>
    implements $CheckStateCopyWith<$Res> {
  _$CheckStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPoint = null,
    Object? goalPoint = null,
  }) {
    return _then(_value.copyWith(
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      goalPoint: null == goalPoint
          ? _value.goalPoint
          : goalPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckStateImplCopyWith<$Res>
    implements $CheckStateCopyWith<$Res> {
  factory _$$CheckStateImplCopyWith(
          _$CheckStateImpl value, $Res Function(_$CheckStateImpl) then) =
      __$$CheckStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String startPoint, String goalPoint});
}

/// @nodoc
class __$$CheckStateImplCopyWithImpl<$Res>
    extends _$CheckStateCopyWithImpl<$Res, _$CheckStateImpl>
    implements _$$CheckStateImplCopyWith<$Res> {
  __$$CheckStateImplCopyWithImpl(
      _$CheckStateImpl _value, $Res Function(_$CheckStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startPoint = null,
    Object? goalPoint = null,
  }) {
    return _then(_$CheckStateImpl(
      startPoint: null == startPoint
          ? _value.startPoint
          : startPoint // ignore: cast_nullable_to_non_nullable
              as String,
      goalPoint: null == goalPoint
          ? _value.goalPoint
          : goalPoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckStateImpl implements _CheckState {
  const _$CheckStateImpl({required this.startPoint, required this.goalPoint});

  @override
  final String startPoint;
  @override
  final String goalPoint;

  @override
  String toString() {
    return 'CheckState(startPoint: $startPoint, goalPoint: $goalPoint)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckStateImpl &&
            (identical(other.startPoint, startPoint) ||
                other.startPoint == startPoint) &&
            (identical(other.goalPoint, goalPoint) ||
                other.goalPoint == goalPoint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startPoint, goalPoint);

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckStateImplCopyWith<_$CheckStateImpl> get copyWith =>
      __$$CheckStateImplCopyWithImpl<_$CheckStateImpl>(this, _$identity);
}

abstract class _CheckState implements CheckState {
  const factory _CheckState(
      {required final String startPoint,
      required final String goalPoint}) = _$CheckStateImpl;

  @override
  String get startPoint;
  @override
  String get goalPoint;

  /// Create a copy of CheckState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckStateImplCopyWith<_$CheckStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
