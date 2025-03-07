// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'child_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChildDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int childId) childDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int childId)? childDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int childId)? childDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_childDetailsFetched value) childDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childDetailsFetched value)? childDetailsFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childDetailsFetched value)? childDetailsFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildDetailsEventCopyWith<$Res> {
  factory $ChildDetailsEventCopyWith(
          ChildDetailsEvent value, $Res Function(ChildDetailsEvent) then) =
      _$ChildDetailsEventCopyWithImpl<$Res, ChildDetailsEvent>;
}

/// @nodoc
class _$ChildDetailsEventCopyWithImpl<$Res, $Val extends ChildDetailsEvent>
    implements $ChildDetailsEventCopyWith<$Res> {
  _$ChildDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildDetailsEvent
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
    extends _$ChildDetailsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChildDetailsEvent.started()';
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
    required TResult Function(int childId) childDetailsFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int childId)? childDetailsFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int childId)? childDetailsFetched,
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
    required TResult Function(_childDetailsFetched value) childDetailsFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childDetailsFetched value)? childDetailsFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childDetailsFetched value)? childDetailsFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChildDetailsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$childDetailsFetchedImplCopyWith<$Res> {
  factory _$$childDetailsFetchedImplCopyWith(_$childDetailsFetchedImpl value,
          $Res Function(_$childDetailsFetchedImpl) then) =
      __$$childDetailsFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int childId});
}

/// @nodoc
class __$$childDetailsFetchedImplCopyWithImpl<$Res>
    extends _$ChildDetailsEventCopyWithImpl<$Res, _$childDetailsFetchedImpl>
    implements _$$childDetailsFetchedImplCopyWith<$Res> {
  __$$childDetailsFetchedImplCopyWithImpl(_$childDetailsFetchedImpl _value,
      $Res Function(_$childDetailsFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? childId = null,
  }) {
    return _then(_$childDetailsFetchedImpl(
      null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$childDetailsFetchedImpl implements _childDetailsFetched {
  const _$childDetailsFetchedImpl(this.childId);

  @override
  final int childId;

  @override
  String toString() {
    return 'ChildDetailsEvent.childDetailsFetched(childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$childDetailsFetchedImpl &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, childId);

  /// Create a copy of ChildDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$childDetailsFetchedImplCopyWith<_$childDetailsFetchedImpl> get copyWith =>
      __$$childDetailsFetchedImplCopyWithImpl<_$childDetailsFetchedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int childId) childDetailsFetched,
  }) {
    return childDetailsFetched(childId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int childId)? childDetailsFetched,
  }) {
    return childDetailsFetched?.call(childId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int childId)? childDetailsFetched,
    required TResult orElse(),
  }) {
    if (childDetailsFetched != null) {
      return childDetailsFetched(childId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_childDetailsFetched value) childDetailsFetched,
  }) {
    return childDetailsFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childDetailsFetched value)? childDetailsFetched,
  }) {
    return childDetailsFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childDetailsFetched value)? childDetailsFetched,
    required TResult orElse(),
  }) {
    if (childDetailsFetched != null) {
      return childDetailsFetched(this);
    }
    return orElse();
  }
}

abstract class _childDetailsFetched implements ChildDetailsEvent {
  const factory _childDetailsFetched(final int childId) =
      _$childDetailsFetchedImpl;

  int get childId;

  /// Create a copy of ChildDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$childDetailsFetchedImplCopyWith<_$childDetailsFetchedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChildDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChildModel child) success,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChildModel child)? success,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChildModel child)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildDetailsLoading value) loading,
    required TResult Function(ChildDetailsSuccess value) success,
    required TResult Function(ChildDetailsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildDetailsLoading value)? loading,
    TResult? Function(ChildDetailsSuccess value)? success,
    TResult? Function(ChildDetailsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildDetailsLoading value)? loading,
    TResult Function(ChildDetailsSuccess value)? success,
    TResult Function(ChildDetailsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildDetailsStateCopyWith<$Res> {
  factory $ChildDetailsStateCopyWith(
          ChildDetailsState value, $Res Function(ChildDetailsState) then) =
      _$ChildDetailsStateCopyWithImpl<$Res, ChildDetailsState>;
}

/// @nodoc
class _$ChildDetailsStateCopyWithImpl<$Res, $Val extends ChildDetailsState>
    implements $ChildDetailsStateCopyWith<$Res> {
  _$ChildDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildDetailsState
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
    extends _$ChildDetailsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChildDetailsState.initial()';
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
    required TResult Function(ChildModel child) success,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChildModel child)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChildModel child)? success,
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
    required TResult Function(ChildDetailsLoading value) loading,
    required TResult Function(ChildDetailsSuccess value) success,
    required TResult Function(ChildDetailsError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildDetailsLoading value)? loading,
    TResult? Function(ChildDetailsSuccess value)? success,
    TResult? Function(ChildDetailsError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildDetailsLoading value)? loading,
    TResult Function(ChildDetailsSuccess value)? success,
    TResult Function(ChildDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChildDetailsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChildDetailsLoadingImplCopyWith<$Res> {
  factory _$$ChildDetailsLoadingImplCopyWith(_$ChildDetailsLoadingImpl value,
          $Res Function(_$ChildDetailsLoadingImpl) then) =
      __$$ChildDetailsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChildDetailsLoadingImplCopyWithImpl<$Res>
    extends _$ChildDetailsStateCopyWithImpl<$Res, _$ChildDetailsLoadingImpl>
    implements _$$ChildDetailsLoadingImplCopyWith<$Res> {
  __$$ChildDetailsLoadingImplCopyWithImpl(_$ChildDetailsLoadingImpl _value,
      $Res Function(_$ChildDetailsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChildDetailsLoadingImpl implements ChildDetailsLoading {
  const _$ChildDetailsLoadingImpl();

  @override
  String toString() {
    return 'ChildDetailsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildDetailsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChildModel child) success,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChildModel child)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChildModel child)? success,
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
    required TResult Function(ChildDetailsLoading value) loading,
    required TResult Function(ChildDetailsSuccess value) success,
    required TResult Function(ChildDetailsError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildDetailsLoading value)? loading,
    TResult? Function(ChildDetailsSuccess value)? success,
    TResult? Function(ChildDetailsError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildDetailsLoading value)? loading,
    TResult Function(ChildDetailsSuccess value)? success,
    TResult Function(ChildDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChildDetailsLoading implements ChildDetailsState {
  const factory ChildDetailsLoading() = _$ChildDetailsLoadingImpl;
}

/// @nodoc
abstract class _$$ChildDetailsSuccessImplCopyWith<$Res> {
  factory _$$ChildDetailsSuccessImplCopyWith(_$ChildDetailsSuccessImpl value,
          $Res Function(_$ChildDetailsSuccessImpl) then) =
      __$$ChildDetailsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ChildModel child});
}

/// @nodoc
class __$$ChildDetailsSuccessImplCopyWithImpl<$Res>
    extends _$ChildDetailsStateCopyWithImpl<$Res, _$ChildDetailsSuccessImpl>
    implements _$$ChildDetailsSuccessImplCopyWith<$Res> {
  __$$ChildDetailsSuccessImplCopyWithImpl(_$ChildDetailsSuccessImpl _value,
      $Res Function(_$ChildDetailsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? child = null,
  }) {
    return _then(_$ChildDetailsSuccessImpl(
      null == child
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as ChildModel,
    ));
  }
}

/// @nodoc

class _$ChildDetailsSuccessImpl implements ChildDetailsSuccess {
  const _$ChildDetailsSuccessImpl(this.child);

  @override
  final ChildModel child;

  @override
  String toString() {
    return 'ChildDetailsState.success(child: $child)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildDetailsSuccessImpl &&
            (identical(other.child, child) || other.child == child));
  }

  @override
  int get hashCode => Object.hash(runtimeType, child);

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildDetailsSuccessImplCopyWith<_$ChildDetailsSuccessImpl> get copyWith =>
      __$$ChildDetailsSuccessImplCopyWithImpl<_$ChildDetailsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChildModel child) success,
    required TResult Function(String errorMessage) error,
  }) {
    return success(child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChildModel child)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return success?.call(child);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChildModel child)? success,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(child);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildDetailsLoading value) loading,
    required TResult Function(ChildDetailsSuccess value) success,
    required TResult Function(ChildDetailsError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildDetailsLoading value)? loading,
    TResult? Function(ChildDetailsSuccess value)? success,
    TResult? Function(ChildDetailsError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildDetailsLoading value)? loading,
    TResult Function(ChildDetailsSuccess value)? success,
    TResult Function(ChildDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChildDetailsSuccess implements ChildDetailsState {
  const factory ChildDetailsSuccess(final ChildModel child) =
      _$ChildDetailsSuccessImpl;

  ChildModel get child;

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildDetailsSuccessImplCopyWith<_$ChildDetailsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildDetailsErrorImplCopyWith<$Res> {
  factory _$$ChildDetailsErrorImplCopyWith(_$ChildDetailsErrorImpl value,
          $Res Function(_$ChildDetailsErrorImpl) then) =
      __$$ChildDetailsErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ChildDetailsErrorImplCopyWithImpl<$Res>
    extends _$ChildDetailsStateCopyWithImpl<$Res, _$ChildDetailsErrorImpl>
    implements _$$ChildDetailsErrorImplCopyWith<$Res> {
  __$$ChildDetailsErrorImplCopyWithImpl(_$ChildDetailsErrorImpl _value,
      $Res Function(_$ChildDetailsErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ChildDetailsErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChildDetailsErrorImpl implements ChildDetailsError {
  const _$ChildDetailsErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChildDetailsState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildDetailsErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildDetailsErrorImplCopyWith<_$ChildDetailsErrorImpl> get copyWith =>
      __$$ChildDetailsErrorImplCopyWithImpl<_$ChildDetailsErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(ChildModel child) success,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(ChildModel child)? success,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(ChildModel child)? success,
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
    required TResult Function(ChildDetailsLoading value) loading,
    required TResult Function(ChildDetailsSuccess value) success,
    required TResult Function(ChildDetailsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildDetailsLoading value)? loading,
    TResult? Function(ChildDetailsSuccess value)? success,
    TResult? Function(ChildDetailsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildDetailsLoading value)? loading,
    TResult Function(ChildDetailsSuccess value)? success,
    TResult Function(ChildDetailsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChildDetailsError implements ChildDetailsState {
  const factory ChildDetailsError(final String errorMessage) =
      _$ChildDetailsErrorImpl;

  String get errorMessage;

  /// Create a copy of ChildDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildDetailsErrorImplCopyWith<_$ChildDetailsErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
