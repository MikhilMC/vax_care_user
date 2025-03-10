// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slots_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SlotsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int healthProviderId) slotsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int healthProviderId)? slotsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int healthProviderId)? slotsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_slotsLoaded value) slotsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_slotsLoaded value)? slotsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_slotsLoaded value)? slotsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotsEventCopyWith<$Res> {
  factory $SlotsEventCopyWith(
          SlotsEvent value, $Res Function(SlotsEvent) then) =
      _$SlotsEventCopyWithImpl<$Res, SlotsEvent>;
}

/// @nodoc
class _$SlotsEventCopyWithImpl<$Res, $Val extends SlotsEvent>
    implements $SlotsEventCopyWith<$Res> {
  _$SlotsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotsEvent
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
    extends _$SlotsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SlotsEvent.started()';
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
    required TResult Function(int healthProviderId) slotsLoaded,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int healthProviderId)? slotsLoaded,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int healthProviderId)? slotsLoaded,
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
    required TResult Function(_slotsLoaded value) slotsLoaded,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_slotsLoaded value)? slotsLoaded,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_slotsLoaded value)? slotsLoaded,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SlotsEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$slotsLoadedImplCopyWith<$Res> {
  factory _$$slotsLoadedImplCopyWith(
          _$slotsLoadedImpl value, $Res Function(_$slotsLoadedImpl) then) =
      __$$slotsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int healthProviderId});
}

/// @nodoc
class __$$slotsLoadedImplCopyWithImpl<$Res>
    extends _$SlotsEventCopyWithImpl<$Res, _$slotsLoadedImpl>
    implements _$$slotsLoadedImplCopyWith<$Res> {
  __$$slotsLoadedImplCopyWithImpl(
      _$slotsLoadedImpl _value, $Res Function(_$slotsLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? healthProviderId = null,
  }) {
    return _then(_$slotsLoadedImpl(
      null == healthProviderId
          ? _value.healthProviderId
          : healthProviderId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$slotsLoadedImpl implements _slotsLoaded {
  const _$slotsLoadedImpl(this.healthProviderId);

  @override
  final int healthProviderId;

  @override
  String toString() {
    return 'SlotsEvent.slotsLoaded(healthProviderId: $healthProviderId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$slotsLoadedImpl &&
            (identical(other.healthProviderId, healthProviderId) ||
                other.healthProviderId == healthProviderId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, healthProviderId);

  /// Create a copy of SlotsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$slotsLoadedImplCopyWith<_$slotsLoadedImpl> get copyWith =>
      __$$slotsLoadedImplCopyWithImpl<_$slotsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int healthProviderId) slotsLoaded,
  }) {
    return slotsLoaded(healthProviderId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int healthProviderId)? slotsLoaded,
  }) {
    return slotsLoaded?.call(healthProviderId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int healthProviderId)? slotsLoaded,
    required TResult orElse(),
  }) {
    if (slotsLoaded != null) {
      return slotsLoaded(healthProviderId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_slotsLoaded value) slotsLoaded,
  }) {
    return slotsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_slotsLoaded value)? slotsLoaded,
  }) {
    return slotsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_slotsLoaded value)? slotsLoaded,
    required TResult orElse(),
  }) {
    if (slotsLoaded != null) {
      return slotsLoaded(this);
    }
    return orElse();
  }
}

abstract class _slotsLoaded implements SlotsEvent {
  const factory _slotsLoaded(final int healthProviderId) = _$slotsLoadedImpl;

  int get healthProviderId;

  /// Create a copy of SlotsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$slotsLoadedImplCopyWith<_$slotsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SlotsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SlotModel> slots) success,
    required TResult Function(String errorMessage) erorr,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SlotModel> slots)? success,
    TResult? Function(String errorMessage)? erorr,
    TResult? Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SlotModel> slots)? success,
    TResult Function(String errorMessage)? erorr,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SlotsLoading value) loading,
    required TResult Function(SlotsSuccess value) success,
    required TResult Function(SlotsErorr value) erorr,
    required TResult Function(SlotsEmpty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SlotsLoading value)? loading,
    TResult? Function(SlotsSuccess value)? success,
    TResult? Function(SlotsErorr value)? erorr,
    TResult? Function(SlotsEmpty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SlotsLoading value)? loading,
    TResult Function(SlotsSuccess value)? success,
    TResult Function(SlotsErorr value)? erorr,
    TResult Function(SlotsEmpty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotsStateCopyWith<$Res> {
  factory $SlotsStateCopyWith(
          SlotsState value, $Res Function(SlotsState) then) =
      _$SlotsStateCopyWithImpl<$Res, SlotsState>;
}

/// @nodoc
class _$SlotsStateCopyWithImpl<$Res, $Val extends SlotsState>
    implements $SlotsStateCopyWith<$Res> {
  _$SlotsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SlotsState
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
    extends _$SlotsStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SlotsState.initial()';
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
    required TResult Function(List<SlotModel> slots) success,
    required TResult Function(String errorMessage) erorr,
    required TResult Function() empty,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SlotModel> slots)? success,
    TResult? Function(String errorMessage)? erorr,
    TResult? Function()? empty,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SlotModel> slots)? success,
    TResult Function(String errorMessage)? erorr,
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
    required TResult Function(SlotsLoading value) loading,
    required TResult Function(SlotsSuccess value) success,
    required TResult Function(SlotsErorr value) erorr,
    required TResult Function(SlotsEmpty value) empty,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SlotsLoading value)? loading,
    TResult? Function(SlotsSuccess value)? success,
    TResult? Function(SlotsErorr value)? erorr,
    TResult? Function(SlotsEmpty value)? empty,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SlotsLoading value)? loading,
    TResult Function(SlotsSuccess value)? success,
    TResult Function(SlotsErorr value)? erorr,
    TResult Function(SlotsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SlotsState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SlotsLoadingImplCopyWith<$Res> {
  factory _$$SlotsLoadingImplCopyWith(
          _$SlotsLoadingImpl value, $Res Function(_$SlotsLoadingImpl) then) =
      __$$SlotsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SlotsLoadingImplCopyWithImpl<$Res>
    extends _$SlotsStateCopyWithImpl<$Res, _$SlotsLoadingImpl>
    implements _$$SlotsLoadingImplCopyWith<$Res> {
  __$$SlotsLoadingImplCopyWithImpl(
      _$SlotsLoadingImpl _value, $Res Function(_$SlotsLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SlotsLoadingImpl implements SlotsLoading {
  const _$SlotsLoadingImpl();

  @override
  String toString() {
    return 'SlotsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SlotsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SlotModel> slots) success,
    required TResult Function(String errorMessage) erorr,
    required TResult Function() empty,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SlotModel> slots)? success,
    TResult? Function(String errorMessage)? erorr,
    TResult? Function()? empty,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SlotModel> slots)? success,
    TResult Function(String errorMessage)? erorr,
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
    required TResult Function(SlotsLoading value) loading,
    required TResult Function(SlotsSuccess value) success,
    required TResult Function(SlotsErorr value) erorr,
    required TResult Function(SlotsEmpty value) empty,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SlotsLoading value)? loading,
    TResult? Function(SlotsSuccess value)? success,
    TResult? Function(SlotsErorr value)? erorr,
    TResult? Function(SlotsEmpty value)? empty,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SlotsLoading value)? loading,
    TResult Function(SlotsSuccess value)? success,
    TResult Function(SlotsErorr value)? erorr,
    TResult Function(SlotsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SlotsLoading implements SlotsState {
  const factory SlotsLoading() = _$SlotsLoadingImpl;
}

/// @nodoc
abstract class _$$SlotsSuccessImplCopyWith<$Res> {
  factory _$$SlotsSuccessImplCopyWith(
          _$SlotsSuccessImpl value, $Res Function(_$SlotsSuccessImpl) then) =
      __$$SlotsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SlotModel> slots});
}

/// @nodoc
class __$$SlotsSuccessImplCopyWithImpl<$Res>
    extends _$SlotsStateCopyWithImpl<$Res, _$SlotsSuccessImpl>
    implements _$$SlotsSuccessImplCopyWith<$Res> {
  __$$SlotsSuccessImplCopyWithImpl(
      _$SlotsSuccessImpl _value, $Res Function(_$SlotsSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slots = null,
  }) {
    return _then(_$SlotsSuccessImpl(
      null == slots
          ? _value._slots
          : slots // ignore: cast_nullable_to_non_nullable
              as List<SlotModel>,
    ));
  }
}

/// @nodoc

class _$SlotsSuccessImpl implements SlotsSuccess {
  const _$SlotsSuccessImpl(final List<SlotModel> slots) : _slots = slots;

  final List<SlotModel> _slots;
  @override
  List<SlotModel> get slots {
    if (_slots is EqualUnmodifiableListView) return _slots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slots);
  }

  @override
  String toString() {
    return 'SlotsState.success(slots: $slots)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotsSuccessImpl &&
            const DeepCollectionEquality().equals(other._slots, _slots));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_slots));

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotsSuccessImplCopyWith<_$SlotsSuccessImpl> get copyWith =>
      __$$SlotsSuccessImplCopyWithImpl<_$SlotsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SlotModel> slots) success,
    required TResult Function(String errorMessage) erorr,
    required TResult Function() empty,
  }) {
    return success(slots);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SlotModel> slots)? success,
    TResult? Function(String errorMessage)? erorr,
    TResult? Function()? empty,
  }) {
    return success?.call(slots);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SlotModel> slots)? success,
    TResult Function(String errorMessage)? erorr,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(slots);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SlotsLoading value) loading,
    required TResult Function(SlotsSuccess value) success,
    required TResult Function(SlotsErorr value) erorr,
    required TResult Function(SlotsEmpty value) empty,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SlotsLoading value)? loading,
    TResult? Function(SlotsSuccess value)? success,
    TResult? Function(SlotsErorr value)? erorr,
    TResult? Function(SlotsEmpty value)? empty,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SlotsLoading value)? loading,
    TResult Function(SlotsSuccess value)? success,
    TResult Function(SlotsErorr value)? erorr,
    TResult Function(SlotsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SlotsSuccess implements SlotsState {
  const factory SlotsSuccess(final List<SlotModel> slots) = _$SlotsSuccessImpl;

  List<SlotModel> get slots;

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotsSuccessImplCopyWith<_$SlotsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SlotsErorrImplCopyWith<$Res> {
  factory _$$SlotsErorrImplCopyWith(
          _$SlotsErorrImpl value, $Res Function(_$SlotsErorrImpl) then) =
      __$$SlotsErorrImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$SlotsErorrImplCopyWithImpl<$Res>
    extends _$SlotsStateCopyWithImpl<$Res, _$SlotsErorrImpl>
    implements _$$SlotsErorrImplCopyWith<$Res> {
  __$$SlotsErorrImplCopyWithImpl(
      _$SlotsErorrImpl _value, $Res Function(_$SlotsErorrImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$SlotsErorrImpl(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SlotsErorrImpl implements SlotsErorr {
  const _$SlotsErorrImpl(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'SlotsState.erorr(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SlotsErorrImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SlotsErorrImplCopyWith<_$SlotsErorrImpl> get copyWith =>
      __$$SlotsErorrImplCopyWithImpl<_$SlotsErorrImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SlotModel> slots) success,
    required TResult Function(String errorMessage) erorr,
    required TResult Function() empty,
  }) {
    return erorr(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SlotModel> slots)? success,
    TResult? Function(String errorMessage)? erorr,
    TResult? Function()? empty,
  }) {
    return erorr?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SlotModel> slots)? success,
    TResult Function(String errorMessage)? erorr,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (erorr != null) {
      return erorr(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(SlotsLoading value) loading,
    required TResult Function(SlotsSuccess value) success,
    required TResult Function(SlotsErorr value) erorr,
    required TResult Function(SlotsEmpty value) empty,
  }) {
    return erorr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SlotsLoading value)? loading,
    TResult? Function(SlotsSuccess value)? success,
    TResult? Function(SlotsErorr value)? erorr,
    TResult? Function(SlotsEmpty value)? empty,
  }) {
    return erorr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SlotsLoading value)? loading,
    TResult Function(SlotsSuccess value)? success,
    TResult Function(SlotsErorr value)? erorr,
    TResult Function(SlotsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (erorr != null) {
      return erorr(this);
    }
    return orElse();
  }
}

abstract class SlotsErorr implements SlotsState {
  const factory SlotsErorr(final String errorMessage) = _$SlotsErorrImpl;

  String get errorMessage;

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SlotsErorrImplCopyWith<_$SlotsErorrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SlotsEmptyImplCopyWith<$Res> {
  factory _$$SlotsEmptyImplCopyWith(
          _$SlotsEmptyImpl value, $Res Function(_$SlotsEmptyImpl) then) =
      __$$SlotsEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SlotsEmptyImplCopyWithImpl<$Res>
    extends _$SlotsStateCopyWithImpl<$Res, _$SlotsEmptyImpl>
    implements _$$SlotsEmptyImplCopyWith<$Res> {
  __$$SlotsEmptyImplCopyWithImpl(
      _$SlotsEmptyImpl _value, $Res Function(_$SlotsEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of SlotsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SlotsEmptyImpl implements SlotsEmpty {
  const _$SlotsEmptyImpl();

  @override
  String toString() {
    return 'SlotsState.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SlotsEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<SlotModel> slots) success,
    required TResult Function(String errorMessage) erorr,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<SlotModel> slots)? success,
    TResult? Function(String errorMessage)? erorr,
    TResult? Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<SlotModel> slots)? success,
    TResult Function(String errorMessage)? erorr,
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
    required TResult Function(SlotsLoading value) loading,
    required TResult Function(SlotsSuccess value) success,
    required TResult Function(SlotsErorr value) erorr,
    required TResult Function(SlotsEmpty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(SlotsLoading value)? loading,
    TResult? Function(SlotsSuccess value)? success,
    TResult? Function(SlotsErorr value)? erorr,
    TResult? Function(SlotsEmpty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(SlotsLoading value)? loading,
    TResult Function(SlotsSuccess value)? success,
    TResult Function(SlotsErorr value)? erorr,
    TResult Function(SlotsEmpty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class SlotsEmpty implements SlotsState {
  const factory SlotsEmpty() = _$SlotsEmptyImpl;
}
