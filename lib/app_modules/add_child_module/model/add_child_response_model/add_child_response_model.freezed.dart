// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_child_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddChildResponseModel _$AddChildResponseModelFromJson(
    Map<String, dynamic> json) {
  return _AddChildResponseModel.fromJson(json);
}

/// @nodoc
mixin _$AddChildResponseModel {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ChildDataModel? get data => throw _privateConstructorUsedError;

  /// Serializes this AddChildResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddChildResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddChildResponseModelCopyWith<AddChildResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddChildResponseModelCopyWith<$Res> {
  factory $AddChildResponseModelCopyWith(AddChildResponseModel value,
          $Res Function(AddChildResponseModel) then) =
      _$AddChildResponseModelCopyWithImpl<$Res, AddChildResponseModel>;
  @useResult
  $Res call({String? status, String? message, ChildDataModel? data});

  $ChildDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddChildResponseModelCopyWithImpl<$Res,
        $Val extends AddChildResponseModel>
    implements $AddChildResponseModelCopyWith<$Res> {
  _$AddChildResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddChildResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChildDataModel?,
    ) as $Val);
  }

  /// Create a copy of AddChildResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChildDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ChildDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddChildResponseModelImplCopyWith<$Res>
    implements $AddChildResponseModelCopyWith<$Res> {
  factory _$$AddChildResponseModelImplCopyWith(
          _$AddChildResponseModelImpl value,
          $Res Function(_$AddChildResponseModelImpl) then) =
      __$$AddChildResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status, String? message, ChildDataModel? data});

  @override
  $ChildDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$AddChildResponseModelImplCopyWithImpl<$Res>
    extends _$AddChildResponseModelCopyWithImpl<$Res,
        _$AddChildResponseModelImpl>
    implements _$$AddChildResponseModelImplCopyWith<$Res> {
  __$$AddChildResponseModelImplCopyWithImpl(_$AddChildResponseModelImpl _value,
      $Res Function(_$AddChildResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddChildResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$AddChildResponseModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChildDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddChildResponseModelImpl implements _AddChildResponseModel {
  const _$AddChildResponseModelImpl({this.status, this.message, this.data});

  factory _$AddChildResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddChildResponseModelImplFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final ChildDataModel? data;

  @override
  String toString() {
    return 'AddChildResponseModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddChildResponseModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  /// Create a copy of AddChildResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddChildResponseModelImplCopyWith<_$AddChildResponseModelImpl>
      get copyWith => __$$AddChildResponseModelImplCopyWithImpl<
          _$AddChildResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddChildResponseModelImplToJson(
      this,
    );
  }
}

abstract class _AddChildResponseModel implements AddChildResponseModel {
  const factory _AddChildResponseModel(
      {final String? status,
      final String? message,
      final ChildDataModel? data}) = _$AddChildResponseModelImpl;

  factory _AddChildResponseModel.fromJson(Map<String, dynamic> json) =
      _$AddChildResponseModelImpl.fromJson;

  @override
  String? get status;
  @override
  String? get message;
  @override
  ChildDataModel? get data;

  /// Create a copy of AddChildResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddChildResponseModelImplCopyWith<_$AddChildResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
