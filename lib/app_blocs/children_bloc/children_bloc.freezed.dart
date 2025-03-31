// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'children_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChildrenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() childrenFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? childrenFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? childrenFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_childrenFetched value) childrenFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childrenFetched value)? childrenFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childrenFetched value)? childrenFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenEventCopyWith<$Res> {
  factory $ChildrenEventCopyWith(
          ChildrenEvent value, $Res Function(ChildrenEvent) then) =
      _$ChildrenEventCopyWithImpl<$Res, ChildrenEvent>;
}

/// @nodoc
class _$ChildrenEventCopyWithImpl<$Res, $Val extends ChildrenEvent>
    implements $ChildrenEventCopyWith<$Res> {
  _$ChildrenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildrenEvent
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
    extends _$ChildrenEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ChildrenEvent.started()';
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
    required TResult Function() childrenFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? childrenFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? childrenFetched,
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
    required TResult Function(_childrenFetched value) childrenFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childrenFetched value)? childrenFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childrenFetched value)? childrenFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChildrenEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$childrenFetchedImplCopyWith<$Res> {
  factory _$$childrenFetchedImplCopyWith(_$childrenFetchedImpl value,
          $Res Function(_$childrenFetchedImpl) then) =
      __$$childrenFetchedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$childrenFetchedImplCopyWithImpl<$Res>
    extends _$ChildrenEventCopyWithImpl<$Res, _$childrenFetchedImpl>
    implements _$$childrenFetchedImplCopyWith<$Res> {
  __$$childrenFetchedImplCopyWithImpl(
      _$childrenFetchedImpl _value, $Res Function(_$childrenFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$childrenFetchedImpl implements _childrenFetched {
  const _$childrenFetchedImpl();

  @override
  String toString() {
    return 'ChildrenEvent.childrenFetched()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$childrenFetchedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() childrenFetched,
  }) {
    return childrenFetched();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? childrenFetched,
  }) {
    return childrenFetched?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? childrenFetched,
    required TResult orElse(),
  }) {
    if (childrenFetched != null) {
      return childrenFetched();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_childrenFetched value) childrenFetched,
  }) {
    return childrenFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_childrenFetched value)? childrenFetched,
  }) {
    return childrenFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_childrenFetched value)? childrenFetched,
    required TResult orElse(),
  }) {
    if (childrenFetched != null) {
      return childrenFetched(this);
    }
    return orElse();
  }
}

abstract class _childrenFetched implements ChildrenEvent {
  const factory _childrenFetched() = _$childrenFetchedImpl;
}

/// @nodoc
mixin _$ChildrenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChildListModel> children) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChildListModel> children)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChildListModel> children)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildrenLoading value) loading,
    required TResult Function(ChildrenSuccess value) success,
    required TResult Function(ChildrenError value) error,
    required TResult Function(ChildrenEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildrenLoading value)? loading,
    TResult? Function(ChildrenSuccess value)? success,
    TResult? Function(ChildrenError value)? error,
    TResult? Function(ChildrenEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildrenLoading value)? loading,
    TResult Function(ChildrenSuccess value)? success,
    TResult Function(ChildrenError value)? error,
    TResult Function(ChildrenEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenStateCopyWith<$Res> {
  factory $ChildrenStateCopyWith(
          ChildrenState value, $Res Function(ChildrenState) then) =
      _$ChildrenStateCopyWithImpl<$Res, ChildrenState>;
}

/// @nodoc
class _$ChildrenStateCopyWithImpl<$Res, $Val extends ChildrenState>
    implements $ChildrenStateCopyWith<$Res> {
  _$ChildrenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildrenState
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
    extends _$ChildrenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChildrenState.initial()';
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
    required TResult Function(List<ChildListModel> children) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChildListModel> children)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChildListModel> children)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(ChildrenLoading value) loading,
    required TResult Function(ChildrenSuccess value) success,
    required TResult Function(ChildrenError value) error,
    required TResult Function(ChildrenEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildrenLoading value)? loading,
    TResult? Function(ChildrenSuccess value)? success,
    TResult? Function(ChildrenError value)? error,
    TResult? Function(ChildrenEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildrenLoading value)? loading,
    TResult Function(ChildrenSuccess value)? success,
    TResult Function(ChildrenError value)? error,
    TResult Function(ChildrenEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChildrenState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ChildrenLoadingImplCopyWith<$Res> {
  factory _$$ChildrenLoadingImplCopyWith(_$ChildrenLoadingImpl value,
          $Res Function(_$ChildrenLoadingImpl) then) =
      __$$ChildrenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChildrenLoadingImplCopyWithImpl<$Res>
    extends _$ChildrenStateCopyWithImpl<$Res, _$ChildrenLoadingImpl>
    implements _$$ChildrenLoadingImplCopyWith<$Res> {
  __$$ChildrenLoadingImplCopyWithImpl(
      _$ChildrenLoadingImpl _value, $Res Function(_$ChildrenLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChildrenLoadingImpl implements ChildrenLoading {
  const _$ChildrenLoadingImpl();

  @override
  String toString() {
    return 'ChildrenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChildrenLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChildListModel> children) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChildListModel> children)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChildListModel> children)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(ChildrenLoading value) loading,
    required TResult Function(ChildrenSuccess value) success,
    required TResult Function(ChildrenError value) error,
    required TResult Function(ChildrenEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildrenLoading value)? loading,
    TResult? Function(ChildrenSuccess value)? success,
    TResult? Function(ChildrenError value)? error,
    TResult? Function(ChildrenEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildrenLoading value)? loading,
    TResult Function(ChildrenSuccess value)? success,
    TResult Function(ChildrenError value)? error,
    TResult Function(ChildrenEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ChildrenLoading implements ChildrenState {
  const factory ChildrenLoading() = _$ChildrenLoadingImpl;
}

/// @nodoc
abstract class _$$ChildrenSuccessImplCopyWith<$Res> {
  factory _$$ChildrenSuccessImplCopyWith(_$ChildrenSuccessImpl value,
          $Res Function(_$ChildrenSuccessImpl) then) =
      __$$ChildrenSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChildListModel> children});
}

/// @nodoc
class __$$ChildrenSuccessImplCopyWithImpl<$Res>
    extends _$ChildrenStateCopyWithImpl<$Res, _$ChildrenSuccessImpl>
    implements _$$ChildrenSuccessImplCopyWith<$Res> {
  __$$ChildrenSuccessImplCopyWithImpl(
      _$ChildrenSuccessImpl _value, $Res Function(_$ChildrenSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$ChildrenSuccessImpl(
      null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ChildListModel>,
    ));
  }
}

/// @nodoc

class _$ChildrenSuccessImpl implements ChildrenSuccess {
  const _$ChildrenSuccessImpl(final List<ChildListModel> children)
      : _children = children;

  final List<ChildListModel> _children;
  @override
  List<ChildListModel> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'ChildrenState.success(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenSuccessImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenSuccessImplCopyWith<_$ChildrenSuccessImpl> get copyWith =>
      __$$ChildrenSuccessImplCopyWithImpl<_$ChildrenSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChildListModel> children) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChildListModel> children)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChildListModel> children)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildrenLoading value) loading,
    required TResult Function(ChildrenSuccess value) success,
    required TResult Function(ChildrenError value) error,
    required TResult Function(ChildrenEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildrenLoading value)? loading,
    TResult? Function(ChildrenSuccess value)? success,
    TResult? Function(ChildrenError value)? error,
    TResult? Function(ChildrenEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildrenLoading value)? loading,
    TResult Function(ChildrenSuccess value)? success,
    TResult Function(ChildrenError value)? error,
    TResult Function(ChildrenEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ChildrenSuccess implements ChildrenState {
  const factory ChildrenSuccess(final List<ChildListModel> children) =
      _$ChildrenSuccessImpl;

  List<ChildListModel> get children;

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildrenSuccessImplCopyWith<_$ChildrenSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildrenErrorImplCopyWith<$Res> {
  factory _$$ChildrenErrorImplCopyWith(
          _$ChildrenErrorImpl value, $Res Function(_$ChildrenErrorImpl) then) =
      __$$ChildrenErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ChildrenErrorImplCopyWithImpl<$Res>
    extends _$ChildrenStateCopyWithImpl<$Res, _$ChildrenErrorImpl>
    implements _$$ChildrenErrorImplCopyWith<$Res> {
  __$$ChildrenErrorImplCopyWithImpl(
      _$ChildrenErrorImpl _value, $Res Function(_$ChildrenErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ChildrenErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChildrenErrorImpl implements ChildrenError {
  const _$ChildrenErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ChildrenState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildrenErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildrenErrorImplCopyWith<_$ChildrenErrorImpl> get copyWith =>
      __$$ChildrenErrorImplCopyWithImpl<_$ChildrenErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChildListModel> children) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChildListModel> children)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChildListModel> children)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
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
    required TResult Function(ChildrenLoading value) loading,
    required TResult Function(ChildrenSuccess value) success,
    required TResult Function(ChildrenError value) error,
    required TResult Function(ChildrenEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildrenLoading value)? loading,
    TResult? Function(ChildrenSuccess value)? success,
    TResult? Function(ChildrenError value)? error,
    TResult? Function(ChildrenEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildrenLoading value)? loading,
    TResult Function(ChildrenSuccess value)? success,
    TResult Function(ChildrenError value)? error,
    TResult Function(ChildrenEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ChildrenError implements ChildrenState {
  const factory ChildrenError(final String errorMessage) = _$ChildrenErrorImpl;

  String get errorMessage;

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildrenErrorImplCopyWith<_$ChildrenErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChildrenEmptyImplCopyWith<$Res> {
  factory _$$ChildrenEmptyImplCopyWith(
          _$ChildrenEmptyImpl value, $Res Function(_$ChildrenEmptyImpl) then) =
      __$$ChildrenEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChildrenEmptyImplCopyWithImpl<$Res>
    extends _$ChildrenStateCopyWithImpl<$Res, _$ChildrenEmptyImpl>
    implements _$$ChildrenEmptyImplCopyWith<$Res> {
  __$$ChildrenEmptyImplCopyWithImpl(
      _$ChildrenEmptyImpl _value, $Res Function(_$ChildrenEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildrenState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChildrenEmptyImpl implements ChildrenEmpty {
  const _$ChildrenEmptyImpl();

  @override
  String toString() {
    return 'ChildrenState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChildrenEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ChildListModel> children) success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ChildListModel> children)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ChildListModel> children)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(ChildrenLoading value) loading,
    required TResult Function(ChildrenSuccess value) success,
    required TResult Function(ChildrenError value) error,
    required TResult Function(ChildrenEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(ChildrenLoading value)? loading,
    TResult? Function(ChildrenSuccess value)? success,
    TResult? Function(ChildrenError value)? error,
    TResult? Function(ChildrenEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(ChildrenLoading value)? loading,
    TResult Function(ChildrenSuccess value)? success,
    TResult Function(ChildrenError value)? error,
    TResult Function(ChildrenEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ChildrenEmpty implements ChildrenState {
  const factory ChildrenEmpty() = _$ChildrenEmptyImpl;
}
