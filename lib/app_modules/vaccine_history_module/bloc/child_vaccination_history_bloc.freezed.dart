// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_vaccination_history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChildVaccinationHistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int childId) childVaccinationHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int childId)? childVaccinationHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int childId)? childVaccinationHistoryFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_childVaccinationHistoryFetched value)
        childVaccinationHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childVaccinationHistoryFetched value)?
        childVaccinationHistoryFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childVaccinationHistoryFetched value)?
        childVaccinationHistoryFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildVaccinationHistoryEventCopyWith<$Res> {
  factory $ChildVaccinationHistoryEventCopyWith(
          ChildVaccinationHistoryEvent value,
          $Res Function(ChildVaccinationHistoryEvent) then) =
      _$ChildVaccinationHistoryEventCopyWithImpl<$Res,
          ChildVaccinationHistoryEvent>;
}

/// @nodoc
class _$ChildVaccinationHistoryEventCopyWithImpl<$Res,
        $Val extends ChildVaccinationHistoryEvent>
    implements $ChildVaccinationHistoryEventCopyWith<$Res> {
  _$ChildVaccinationHistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildVaccinationHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ChildVaccinationHistoryEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildVaccinationHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChildVaccinationHistoryEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int childId) childVaccinationHistoryFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int childId)? childVaccinationHistoryFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int childId)? childVaccinationHistoryFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_childVaccinationHistoryFetched value)
        childVaccinationHistoryFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childVaccinationHistoryFetched value)?
        childVaccinationHistoryFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childVaccinationHistoryFetched value)?
        childVaccinationHistoryFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChildVaccinationHistoryEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$childVaccinationHistoryFetchedImplCopyWith<$Res> {
  factory _$$childVaccinationHistoryFetchedImplCopyWith(
          _$childVaccinationHistoryFetchedImpl value,
          $Res Function(_$childVaccinationHistoryFetchedImpl) then) =
      __$$childVaccinationHistoryFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int childId});
}

/// @nodoc
class __$$childVaccinationHistoryFetchedImplCopyWithImpl<$Res>
    extends _$ChildVaccinationHistoryEventCopyWithImpl<$Res,
        _$childVaccinationHistoryFetchedImpl>
    implements _$$childVaccinationHistoryFetchedImplCopyWith<$Res> {
  __$$childVaccinationHistoryFetchedImplCopyWithImpl(
      _$childVaccinationHistoryFetchedImpl _value,
      $Res Function(_$childVaccinationHistoryFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildVaccinationHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
  }) {
    return _then(_$childVaccinationHistoryFetchedImpl(
      null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$childVaccinationHistoryFetchedImpl
    implements _childVaccinationHistoryFetched {
  const _$childVaccinationHistoryFetchedImpl(this.childId);

  @override
  final int childId;

  @override
  String toString() {
    return 'ChildVaccinationHistoryEvent.childVaccinationHistoryFetched(childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$childVaccinationHistoryFetchedImpl &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childId);

  /// Create a copy of ChildVaccinationHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$childVaccinationHistoryFetchedImplCopyWith<
          _$childVaccinationHistoryFetchedImpl>
      get copyWith => __$$childVaccinationHistoryFetchedImplCopyWithImpl<
          _$childVaccinationHistoryFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int childId) childVaccinationHistoryFetched,
  }) {
    return childVaccinationHistoryFetched(childId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int childId)? childVaccinationHistoryFetched,
  }) {
    return childVaccinationHistoryFetched?.call(childId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int childId)? childVaccinationHistoryFetched,
    required TResult orElse(),
  }) {
    if (childVaccinationHistoryFetched != null) {
      return childVaccinationHistoryFetched(childId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_childVaccinationHistoryFetched value)
        childVaccinationHistoryFetched,
  }) {
    return childVaccinationHistoryFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childVaccinationHistoryFetched value)?
        childVaccinationHistoryFetched,
  }) {
    return childVaccinationHistoryFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childVaccinationHistoryFetched value)?
        childVaccinationHistoryFetched,
    required TResult orElse(),
  }) {
    if (childVaccinationHistoryFetched != null) {
      return childVaccinationHistoryFetched(this);
    }
    return orElse();
  }
}

abstract class _childVaccinationHistoryFetched
    implements ChildVaccinationHistoryEvent {
  const factory _childVaccinationHistoryFetched(final int childId) =
      _$childVaccinationHistoryFetchedImpl;

  int get childId;

  /// Create a copy of ChildVaccinationHistoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$childVaccinationHistoryFetchedImplCopyWith<
          _$childVaccinationHistoryFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChildVaccinationHistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(VaccinationHistoryModel vaccinationHistory)
        success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildVaccinationHistoryLoading value) loading,
    required TResult Function(ChildVaccinationHistorySuccess value) success,
    required TResult Function(ChildVaccinationHistoryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildVaccinationHistoryLoading value)? loading,
    TResult? Function(ChildVaccinationHistorySuccess value)? success,
    TResult? Function(ChildVaccinationHistoryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildVaccinationHistoryLoading value)? loading,
    TResult Function(ChildVaccinationHistorySuccess value)? success,
    TResult Function(ChildVaccinationHistoryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildVaccinationHistoryStateCopyWith<$Res> {
  factory $ChildVaccinationHistoryStateCopyWith(
          ChildVaccinationHistoryState value,
          $Res Function(ChildVaccinationHistoryState) then) =
      _$ChildVaccinationHistoryStateCopyWithImpl<$Res,
          ChildVaccinationHistoryState>;
}

/// @nodoc
class _$ChildVaccinationHistoryStateCopyWithImpl<$Res,
        $Val extends ChildVaccinationHistoryState>
    implements $ChildVaccinationHistoryStateCopyWith<$Res> {
  _$ChildVaccinationHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChildVaccinationHistoryStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChildVaccinationHistoryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(VaccinationHistoryModel vaccinationHistory)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildVaccinationHistoryLoading value) loading,
    required TResult Function(ChildVaccinationHistorySuccess value) success,
    required TResult Function(ChildVaccinationHistoryError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildVaccinationHistoryLoading value)? loading,
    TResult? Function(ChildVaccinationHistorySuccess value)? success,
    TResult? Function(ChildVaccinationHistoryError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildVaccinationHistoryLoading value)? loading,
    TResult Function(ChildVaccinationHistorySuccess value)? success,
    TResult Function(ChildVaccinationHistoryError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChildVaccinationHistoryState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChildVaccinationHistoryLoadingImplCopyWith<$Res> {
  factory _$$ChildVaccinationHistoryLoadingImplCopyWith(
          _$ChildVaccinationHistoryLoadingImpl value,
          $Res Function(_$ChildVaccinationHistoryLoadingImpl) then) =
      __$$ChildVaccinationHistoryLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChildVaccinationHistoryLoadingImplCopyWithImpl<$Res>
    extends _$ChildVaccinationHistoryStateCopyWithImpl<$Res,
        _$ChildVaccinationHistoryLoadingImpl>
    implements _$$ChildVaccinationHistoryLoadingImplCopyWith<$Res> {
  __$$ChildVaccinationHistoryLoadingImplCopyWithImpl(
      _$ChildVaccinationHistoryLoadingImpl _value,
      $Res Function(_$ChildVaccinationHistoryLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChildVaccinationHistoryLoadingImpl
    implements ChildVaccinationHistoryLoading {
  const _$ChildVaccinationHistoryLoadingImpl();

  @override
  String toString() {
    return 'ChildVaccinationHistoryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildVaccinationHistoryLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(VaccinationHistoryModel vaccinationHistory)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildVaccinationHistoryLoading value) loading,
    required TResult Function(ChildVaccinationHistorySuccess value) success,
    required TResult Function(ChildVaccinationHistoryError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildVaccinationHistoryLoading value)? loading,
    TResult? Function(ChildVaccinationHistorySuccess value)? success,
    TResult? Function(ChildVaccinationHistoryError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildVaccinationHistoryLoading value)? loading,
    TResult Function(ChildVaccinationHistorySuccess value)? success,
    TResult Function(ChildVaccinationHistoryError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChildVaccinationHistoryLoading
    implements ChildVaccinationHistoryState {
  const factory ChildVaccinationHistoryLoading() =
      _$ChildVaccinationHistoryLoadingImpl;
}

/// @nodoc
abstract class _$$ChildVaccinationHistorySuccessImplCopyWith<$Res> {
  factory _$$ChildVaccinationHistorySuccessImplCopyWith(
          _$ChildVaccinationHistorySuccessImpl value,
          $Res Function(_$ChildVaccinationHistorySuccessImpl) then) =
      __$$ChildVaccinationHistorySuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({VaccinationHistoryModel vaccinationHistory});
}

/// @nodoc
class __$$ChildVaccinationHistorySuccessImplCopyWithImpl<$Res>
    extends _$ChildVaccinationHistoryStateCopyWithImpl<$Res,
        _$ChildVaccinationHistorySuccessImpl>
    implements _$$ChildVaccinationHistorySuccessImplCopyWith<$Res> {
  __$$ChildVaccinationHistorySuccessImplCopyWithImpl(
      _$ChildVaccinationHistorySuccessImpl _value,
      $Res Function(_$ChildVaccinationHistorySuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vaccinationHistory = null,
  }) {
    return _then(_$ChildVaccinationHistorySuccessImpl(
      null == vaccinationHistory
          ? _value.vaccinationHistory
          : vaccinationHistory // ignore: cast_nullable_to_non_nullable
              as VaccinationHistoryModel,
    ));
  }
}

/// @nodoc

class _$ChildVaccinationHistorySuccessImpl
    implements ChildVaccinationHistorySuccess {
  const _$ChildVaccinationHistorySuccessImpl(this.vaccinationHistory);

  @override
  final VaccinationHistoryModel vaccinationHistory;

  @override
  String toString() {
    return 'ChildVaccinationHistoryState.success(vaccinationHistory: $vaccinationHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildVaccinationHistorySuccessImpl &&
            (identical(other.vaccinationHistory, vaccinationHistory) ||
                other.vaccinationHistory == vaccinationHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vaccinationHistory);

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildVaccinationHistorySuccessImplCopyWith<
          _$ChildVaccinationHistorySuccessImpl>
      get copyWith => __$$ChildVaccinationHistorySuccessImplCopyWithImpl<
          _$ChildVaccinationHistorySuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(VaccinationHistoryModel vaccinationHistory)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(vaccinationHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(vaccinationHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(vaccinationHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildVaccinationHistoryLoading value) loading,
    required TResult Function(ChildVaccinationHistorySuccess value) success,
    required TResult Function(ChildVaccinationHistoryError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildVaccinationHistoryLoading value)? loading,
    TResult? Function(ChildVaccinationHistorySuccess value)? success,
    TResult? Function(ChildVaccinationHistoryError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildVaccinationHistoryLoading value)? loading,
    TResult Function(ChildVaccinationHistorySuccess value)? success,
    TResult Function(ChildVaccinationHistoryError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChildVaccinationHistorySuccess
    implements ChildVaccinationHistoryState {
  const factory ChildVaccinationHistorySuccess(
          final VaccinationHistoryModel vaccinationHistory) =
      _$ChildVaccinationHistorySuccessImpl;

  VaccinationHistoryModel get vaccinationHistory;

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildVaccinationHistorySuccessImplCopyWith<
          _$ChildVaccinationHistorySuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildVaccinationHistoryErrorImplCopyWith<$Res> {
  factory _$$ChildVaccinationHistoryErrorImplCopyWith(
          _$ChildVaccinationHistoryErrorImpl value,
          $Res Function(_$ChildVaccinationHistoryErrorImpl) then) =
      __$$ChildVaccinationHistoryErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ChildVaccinationHistoryErrorImplCopyWithImpl<$Res>
    extends _$ChildVaccinationHistoryStateCopyWithImpl<$Res,
        _$ChildVaccinationHistoryErrorImpl>
    implements _$$ChildVaccinationHistoryErrorImplCopyWith<$Res> {
  __$$ChildVaccinationHistoryErrorImplCopyWithImpl(
      _$ChildVaccinationHistoryErrorImpl _value,
      $Res Function(_$ChildVaccinationHistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ChildVaccinationHistoryErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChildVaccinationHistoryErrorImpl
    implements ChildVaccinationHistoryError {
  const _$ChildVaccinationHistoryErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChildVaccinationHistoryState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildVaccinationHistoryErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildVaccinationHistoryErrorImplCopyWith<
          _$ChildVaccinationHistoryErrorImpl>
      get copyWith => __$$ChildVaccinationHistoryErrorImplCopyWithImpl<
          _$ChildVaccinationHistoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(VaccinationHistoryModel vaccinationHistory)
        success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(VaccinationHistoryModel vaccinationHistory)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildVaccinationHistoryLoading value) loading,
    required TResult Function(ChildVaccinationHistorySuccess value) success,
    required TResult Function(ChildVaccinationHistoryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildVaccinationHistoryLoading value)? loading,
    TResult? Function(ChildVaccinationHistorySuccess value)? success,
    TResult? Function(ChildVaccinationHistoryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildVaccinationHistoryLoading value)? loading,
    TResult Function(ChildVaccinationHistorySuccess value)? success,
    TResult Function(ChildVaccinationHistoryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChildVaccinationHistoryError
    implements ChildVaccinationHistoryState {
  const factory ChildVaccinationHistoryError(final String errorMessage) =
      _$ChildVaccinationHistoryErrorImpl;

  String get errorMessage;

  /// Create a copy of ChildVaccinationHistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildVaccinationHistoryErrorImplCopyWith<
          _$ChildVaccinationHistoryErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
