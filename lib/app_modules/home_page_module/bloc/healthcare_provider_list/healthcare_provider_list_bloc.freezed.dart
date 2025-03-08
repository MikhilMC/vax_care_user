// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'healthcare_provider_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HealthcareProviderListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double latitude, double longitude, int childId)
        healthcareProviderListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double latitude, double longitude, int childId)?
        healthcareProviderListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double latitude, double longitude, int childId)?
        healthcareProviderListFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_healthcareProviderListFetched value)
        healthcareProviderListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_healthcareProviderListFetched value)?
        healthcareProviderListFetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_healthcareProviderListFetched value)?
        healthcareProviderListFetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthcareProviderListEventCopyWith<$Res> {
  factory $HealthcareProviderListEventCopyWith(
          HealthcareProviderListEvent value,
          $Res Function(HealthcareProviderListEvent) then) =
      _$HealthcareProviderListEventCopyWithImpl<$Res,
          HealthcareProviderListEvent>;
}

/// @nodoc
class _$HealthcareProviderListEventCopyWithImpl<$Res,
        $Val extends HealthcareProviderListEvent>
    implements $HealthcareProviderListEventCopyWith<$Res> {
  _$HealthcareProviderListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthcareProviderListEvent
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
    extends _$HealthcareProviderListEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthcareProviderListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'HealthcareProviderListEvent.started()';
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
    required TResult Function(double latitude, double longitude, int childId)
        healthcareProviderListFetched,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double latitude, double longitude, int childId)?
        healthcareProviderListFetched,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double latitude, double longitude, int childId)?
        healthcareProviderListFetched,
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
    required TResult Function(_healthcareProviderListFetched value)
        healthcareProviderListFetched,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_healthcareProviderListFetched value)?
        healthcareProviderListFetched,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_healthcareProviderListFetched value)?
        healthcareProviderListFetched,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HealthcareProviderListEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$healthcareProviderListFetchedImplCopyWith<$Res> {
  factory _$$healthcareProviderListFetchedImplCopyWith(
          _$healthcareProviderListFetchedImpl value,
          $Res Function(_$healthcareProviderListFetchedImpl) then) =
      __$$healthcareProviderListFetchedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double latitude, double longitude, int childId});
}

/// @nodoc
class __$$healthcareProviderListFetchedImplCopyWithImpl<$Res>
    extends _$HealthcareProviderListEventCopyWithImpl<$Res,
        _$healthcareProviderListFetchedImpl>
    implements _$$healthcareProviderListFetchedImplCopyWith<$Res> {
  __$$healthcareProviderListFetchedImplCopyWithImpl(
      _$healthcareProviderListFetchedImpl _value,
      $Res Function(_$healthcareProviderListFetchedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthcareProviderListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = null,
    Object? longitude = null,
    Object? childId = null,
  }) {
    return _then(_$healthcareProviderListFetchedImpl(
      null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      null == childId
          ? _value.childId
          : childId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$healthcareProviderListFetchedImpl
    implements _healthcareProviderListFetched {
  const _$healthcareProviderListFetchedImpl(
      this.latitude, this.longitude, this.childId);

  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final int childId;

  @override
  String toString() {
    return 'HealthcareProviderListEvent.healthcareProviderListFetched(latitude: $latitude, longitude: $longitude, childId: $childId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$healthcareProviderListFetchedImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.childId, childId) || other.childId == childId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, childId);

  /// Create a copy of HealthcareProviderListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$healthcareProviderListFetchedImplCopyWith<
          _$healthcareProviderListFetchedImpl>
      get copyWith => __$$healthcareProviderListFetchedImplCopyWithImpl<
          _$healthcareProviderListFetchedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(double latitude, double longitude, int childId)
        healthcareProviderListFetched,
  }) {
    return healthcareProviderListFetched(latitude, longitude, childId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(double latitude, double longitude, int childId)?
        healthcareProviderListFetched,
  }) {
    return healthcareProviderListFetched?.call(latitude, longitude, childId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(double latitude, double longitude, int childId)?
        healthcareProviderListFetched,
    required TResult orElse(),
  }) {
    if (healthcareProviderListFetched != null) {
      return healthcareProviderListFetched(latitude, longitude, childId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_healthcareProviderListFetched value)
        healthcareProviderListFetched,
  }) {
    return healthcareProviderListFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_healthcareProviderListFetched value)?
        healthcareProviderListFetched,
  }) {
    return healthcareProviderListFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_healthcareProviderListFetched value)?
        healthcareProviderListFetched,
    required TResult orElse(),
  }) {
    if (healthcareProviderListFetched != null) {
      return healthcareProviderListFetched(this);
    }
    return orElse();
  }
}

abstract class _healthcareProviderListFetched
    implements HealthcareProviderListEvent {
  const factory _healthcareProviderListFetched(
          final double latitude, final double longitude, final int childId) =
      _$healthcareProviderListFetchedImpl;

  double get latitude;
  double get longitude;
  int get childId;

  /// Create a copy of HealthcareProviderListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$healthcareProviderListFetchedImplCopyWith<
          _$healthcareProviderListFetchedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HealthcareProviderListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HealthcareProvider> healthcareProvider)
        success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HealthcareProvider> healthcareProvider)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HealthcareProvider> healthcareProvider)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HealthcareProviderListLoading value) loading,
    required TResult Function(HealthcareProviderListSuccess value) success,
    required TResult Function(HealthcareProviderListError value) error,
    required TResult Function(HealthcareProviderListEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HealthcareProviderListLoading value)? loading,
    TResult? Function(HealthcareProviderListSuccess value)? success,
    TResult? Function(HealthcareProviderListError value)? error,
    TResult? Function(HealthcareProviderListEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HealthcareProviderListLoading value)? loading,
    TResult Function(HealthcareProviderListSuccess value)? success,
    TResult Function(HealthcareProviderListError value)? error,
    TResult Function(HealthcareProviderListEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthcareProviderListStateCopyWith<$Res> {
  factory $HealthcareProviderListStateCopyWith(
          HealthcareProviderListState value,
          $Res Function(HealthcareProviderListState) then) =
      _$HealthcareProviderListStateCopyWithImpl<$Res,
          HealthcareProviderListState>;
}

/// @nodoc
class _$HealthcareProviderListStateCopyWithImpl<$Res,
        $Val extends HealthcareProviderListState>
    implements $HealthcareProviderListStateCopyWith<$Res> {
  _$HealthcareProviderListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HealthcareProviderListState
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
    extends _$HealthcareProviderListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'HealthcareProviderListState.initial()';
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
    required TResult Function(List<HealthcareProvider> healthcareProvider)
        success,
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
    TResult? Function(List<HealthcareProvider> healthcareProvider)? success,
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
    TResult Function(List<HealthcareProvider> healthcareProvider)? success,
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
    required TResult Function(HealthcareProviderListLoading value) loading,
    required TResult Function(HealthcareProviderListSuccess value) success,
    required TResult Function(HealthcareProviderListError value) error,
    required TResult Function(HealthcareProviderListEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HealthcareProviderListLoading value)? loading,
    TResult? Function(HealthcareProviderListSuccess value)? success,
    TResult? Function(HealthcareProviderListError value)? error,
    TResult? Function(HealthcareProviderListEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HealthcareProviderListLoading value)? loading,
    TResult Function(HealthcareProviderListSuccess value)? success,
    TResult Function(HealthcareProviderListError value)? error,
    TResult Function(HealthcareProviderListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HealthcareProviderListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$HealthcareProviderListLoadingImplCopyWith<$Res> {
  factory _$$HealthcareProviderListLoadingImplCopyWith(
          _$HealthcareProviderListLoadingImpl value,
          $Res Function(_$HealthcareProviderListLoadingImpl) then) =
      __$$HealthcareProviderListLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthcareProviderListLoadingImplCopyWithImpl<$Res>
    extends _$HealthcareProviderListStateCopyWithImpl<$Res,
        _$HealthcareProviderListLoadingImpl>
    implements _$$HealthcareProviderListLoadingImplCopyWith<$Res> {
  __$$HealthcareProviderListLoadingImplCopyWithImpl(
      _$HealthcareProviderListLoadingImpl _value,
      $Res Function(_$HealthcareProviderListLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HealthcareProviderListLoadingImpl
    implements HealthcareProviderListLoading {
  const _$HealthcareProviderListLoadingImpl();

  @override
  String toString() {
    return 'HealthcareProviderListState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthcareProviderListLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HealthcareProvider> healthcareProvider)
        success,
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
    TResult? Function(List<HealthcareProvider> healthcareProvider)? success,
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
    TResult Function(List<HealthcareProvider> healthcareProvider)? success,
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
    required TResult Function(HealthcareProviderListLoading value) loading,
    required TResult Function(HealthcareProviderListSuccess value) success,
    required TResult Function(HealthcareProviderListError value) error,
    required TResult Function(HealthcareProviderListEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HealthcareProviderListLoading value)? loading,
    TResult? Function(HealthcareProviderListSuccess value)? success,
    TResult? Function(HealthcareProviderListError value)? error,
    TResult? Function(HealthcareProviderListEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HealthcareProviderListLoading value)? loading,
    TResult Function(HealthcareProviderListSuccess value)? success,
    TResult Function(HealthcareProviderListError value)? error,
    TResult Function(HealthcareProviderListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HealthcareProviderListLoading
    implements HealthcareProviderListState {
  const factory HealthcareProviderListLoading() =
      _$HealthcareProviderListLoadingImpl;
}

/// @nodoc
abstract class _$$HealthcareProviderListSuccessImplCopyWith<$Res> {
  factory _$$HealthcareProviderListSuccessImplCopyWith(
          _$HealthcareProviderListSuccessImpl value,
          $Res Function(_$HealthcareProviderListSuccessImpl) then) =
      __$$HealthcareProviderListSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HealthcareProvider> healthcareProvider});
}

/// @nodoc
class __$$HealthcareProviderListSuccessImplCopyWithImpl<$Res>
    extends _$HealthcareProviderListStateCopyWithImpl<$Res,
        _$HealthcareProviderListSuccessImpl>
    implements _$$HealthcareProviderListSuccessImplCopyWith<$Res> {
  __$$HealthcareProviderListSuccessImplCopyWithImpl(
      _$HealthcareProviderListSuccessImpl _value,
      $Res Function(_$HealthcareProviderListSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthcareProvider = null,
  }) {
    return _then(_$HealthcareProviderListSuccessImpl(
      null == healthcareProvider
          ? _value._healthcareProvider
          : healthcareProvider // ignore: cast_nullable_to_non_nullable
              as List<HealthcareProvider>,
    ));
  }
}

/// @nodoc

class _$HealthcareProviderListSuccessImpl
    implements HealthcareProviderListSuccess {
  const _$HealthcareProviderListSuccessImpl(
      final List<HealthcareProvider> healthcareProvider)
      : _healthcareProvider = healthcareProvider;

  final List<HealthcareProvider> _healthcareProvider;
  @override
  List<HealthcareProvider> get healthcareProvider {
    if (_healthcareProvider is EqualUnmodifiableListView)
      return _healthcareProvider;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_healthcareProvider);
  }

  @override
  String toString() {
    return 'HealthcareProviderListState.success(healthcareProvider: $healthcareProvider)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthcareProviderListSuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._healthcareProvider, _healthcareProvider));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_healthcareProvider));

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthcareProviderListSuccessImplCopyWith<
          _$HealthcareProviderListSuccessImpl>
      get copyWith => __$$HealthcareProviderListSuccessImplCopyWithImpl<
          _$HealthcareProviderListSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HealthcareProvider> healthcareProvider)
        success,
    required TResult Function(String errorMessage) error,
    required TResult Function() empty,
  }) {
    return success(healthcareProvider);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HealthcareProvider> healthcareProvider)? success,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? empty,
  }) {
    return success?.call(healthcareProvider);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HealthcareProvider> healthcareProvider)? success,
    TResult Function(String errorMessage)? error,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(healthcareProvider);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(HealthcareProviderListLoading value) loading,
    required TResult Function(HealthcareProviderListSuccess value) success,
    required TResult Function(HealthcareProviderListError value) error,
    required TResult Function(HealthcareProviderListEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HealthcareProviderListLoading value)? loading,
    TResult? Function(HealthcareProviderListSuccess value)? success,
    TResult? Function(HealthcareProviderListError value)? error,
    TResult? Function(HealthcareProviderListEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HealthcareProviderListLoading value)? loading,
    TResult Function(HealthcareProviderListSuccess value)? success,
    TResult Function(HealthcareProviderListError value)? error,
    TResult Function(HealthcareProviderListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HealthcareProviderListSuccess
    implements HealthcareProviderListState {
  const factory HealthcareProviderListSuccess(
          final List<HealthcareProvider> healthcareProvider) =
      _$HealthcareProviderListSuccessImpl;

  List<HealthcareProvider> get healthcareProvider;

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthcareProviderListSuccessImplCopyWith<
          _$HealthcareProviderListSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HealthcareProviderListErrorImplCopyWith<$Res> {
  factory _$$HealthcareProviderListErrorImplCopyWith(
          _$HealthcareProviderListErrorImpl value,
          $Res Function(_$HealthcareProviderListErrorImpl) then) =
      __$$HealthcareProviderListErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$HealthcareProviderListErrorImplCopyWithImpl<$Res>
    extends _$HealthcareProviderListStateCopyWithImpl<$Res,
        _$HealthcareProviderListErrorImpl>
    implements _$$HealthcareProviderListErrorImplCopyWith<$Res> {
  __$$HealthcareProviderListErrorImplCopyWithImpl(
      _$HealthcareProviderListErrorImpl _value,
      $Res Function(_$HealthcareProviderListErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$HealthcareProviderListErrorImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HealthcareProviderListErrorImpl implements HealthcareProviderListError {
  const _$HealthcareProviderListErrorImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'HealthcareProviderListState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthcareProviderListErrorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HealthcareProviderListErrorImplCopyWith<_$HealthcareProviderListErrorImpl>
      get copyWith => __$$HealthcareProviderListErrorImplCopyWithImpl<
          _$HealthcareProviderListErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HealthcareProvider> healthcareProvider)
        success,
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
    TResult? Function(List<HealthcareProvider> healthcareProvider)? success,
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
    TResult Function(List<HealthcareProvider> healthcareProvider)? success,
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
    required TResult Function(HealthcareProviderListLoading value) loading,
    required TResult Function(HealthcareProviderListSuccess value) success,
    required TResult Function(HealthcareProviderListError value) error,
    required TResult Function(HealthcareProviderListEmpty value) empty,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HealthcareProviderListLoading value)? loading,
    TResult? Function(HealthcareProviderListSuccess value)? success,
    TResult? Function(HealthcareProviderListError value)? error,
    TResult? Function(HealthcareProviderListEmpty value)? empty,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HealthcareProviderListLoading value)? loading,
    TResult Function(HealthcareProviderListSuccess value)? success,
    TResult Function(HealthcareProviderListError value)? error,
    TResult Function(HealthcareProviderListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HealthcareProviderListError
    implements HealthcareProviderListState {
  const factory HealthcareProviderListError(final String errorMessage) =
      _$HealthcareProviderListErrorImpl;

  String get errorMessage;

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HealthcareProviderListErrorImplCopyWith<_$HealthcareProviderListErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HealthcareProviderListEmptyImplCopyWith<$Res> {
  factory _$$HealthcareProviderListEmptyImplCopyWith(
          _$HealthcareProviderListEmptyImpl value,
          $Res Function(_$HealthcareProviderListEmptyImpl) then) =
      __$$HealthcareProviderListEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HealthcareProviderListEmptyImplCopyWithImpl<$Res>
    extends _$HealthcareProviderListStateCopyWithImpl<$Res,
        _$HealthcareProviderListEmptyImpl>
    implements _$$HealthcareProviderListEmptyImplCopyWith<$Res> {
  __$$HealthcareProviderListEmptyImplCopyWithImpl(
      _$HealthcareProviderListEmptyImpl _value,
      $Res Function(_$HealthcareProviderListEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of HealthcareProviderListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HealthcareProviderListEmptyImpl implements HealthcareProviderListEmpty {
  const _$HealthcareProviderListEmptyImpl();

  @override
  String toString() {
    return 'HealthcareProviderListState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HealthcareProviderListEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HealthcareProvider> healthcareProvider)
        success,
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
    TResult? Function(List<HealthcareProvider> healthcareProvider)? success,
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
    TResult Function(List<HealthcareProvider> healthcareProvider)? success,
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
    required TResult Function(HealthcareProviderListLoading value) loading,
    required TResult Function(HealthcareProviderListSuccess value) success,
    required TResult Function(HealthcareProviderListError value) error,
    required TResult Function(HealthcareProviderListEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(HealthcareProviderListLoading value)? loading,
    TResult? Function(HealthcareProviderListSuccess value)? success,
    TResult? Function(HealthcareProviderListError value)? error,
    TResult? Function(HealthcareProviderListEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(HealthcareProviderListLoading value)? loading,
    TResult Function(HealthcareProviderListSuccess value)? success,
    TResult Function(HealthcareProviderListError value)? error,
    TResult Function(HealthcareProviderListEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class HealthcareProviderListEmpty
    implements HealthcareProviderListState {
  const factory HealthcareProviderListEmpty() =
      _$HealthcareProviderListEmptyImpl;
}
