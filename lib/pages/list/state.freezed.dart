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
mixin _$ListState {
  List<double?> get dvancedDist => throw _privateConstructorUsedError;
  List<String?> get createdAt => throw _privateConstructorUsedError;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListStateCopyWith<ListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res, ListState>;
  @useResult
  $Res call({List<double?> dvancedDist, List<String?> createdAt});
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res, $Val extends ListState>
    implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dvancedDist = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      dvancedDist: null == dvancedDist
          ? _value.dvancedDist
          : dvancedDist // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListStateImplCopyWith<$Res>
    implements $ListStateCopyWith<$Res> {
  factory _$$ListStateImplCopyWith(
          _$ListStateImpl value, $Res Function(_$ListStateImpl) then) =
      __$$ListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double?> dvancedDist, List<String?> createdAt});
}

/// @nodoc
class __$$ListStateImplCopyWithImpl<$Res>
    extends _$ListStateCopyWithImpl<$Res, _$ListStateImpl>
    implements _$$ListStateImplCopyWith<$Res> {
  __$$ListStateImplCopyWithImpl(
      _$ListStateImpl _value, $Res Function(_$ListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dvancedDist = null,
    Object? createdAt = null,
  }) {
    return _then(_$ListStateImpl(
      dvancedDist: null == dvancedDist
          ? _value._dvancedDist
          : dvancedDist // ignore: cast_nullable_to_non_nullable
              as List<double?>,
      createdAt: null == createdAt
          ? _value._createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as List<String?>,
    ));
  }
}

/// @nodoc

class _$ListStateImpl implements _ListState {
  const _$ListStateImpl(
      {required final List<double?> dvancedDist,
      required final List<String?> createdAt})
      : _dvancedDist = dvancedDist,
        _createdAt = createdAt;

  final List<double?> _dvancedDist;
  @override
  List<double?> get dvancedDist {
    if (_dvancedDist is EqualUnmodifiableListView) return _dvancedDist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dvancedDist);
  }

  final List<String?> _createdAt;
  @override
  List<String?> get createdAt {
    if (_createdAt is EqualUnmodifiableListView) return _createdAt;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_createdAt);
  }

  @override
  String toString() {
    return 'ListState(dvancedDist: $dvancedDist, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._dvancedDist, _dvancedDist) &&
            const DeepCollectionEquality()
                .equals(other._createdAt, _createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dvancedDist),
      const DeepCollectionEquality().hash(_createdAt));

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      __$$ListStateImplCopyWithImpl<_$ListStateImpl>(this, _$identity);
}

abstract class _ListState implements ListState {
  const factory _ListState(
      {required final List<double?> dvancedDist,
      required final List<String?> createdAt}) = _$ListStateImpl;

  @override
  List<double?> get dvancedDist;
  @override
  List<String?> get createdAt;

  /// Create a copy of ListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListStateImplCopyWith<_$ListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
