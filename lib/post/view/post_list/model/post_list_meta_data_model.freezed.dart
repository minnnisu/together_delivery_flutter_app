// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_meta_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostListMetaDataModel _$PostListMetaDataModelFromJson(
    Map<String, dynamic> json) {
  return _PostListMetaDataModel.fromJson(json);
}

/// @nodoc
mixin _$PostListMetaDataModel {
  int get totalPage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostListMetaDataModelCopyWith<PostListMetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListMetaDataModelCopyWith<$Res> {
  factory $PostListMetaDataModelCopyWith(PostListMetaDataModel value,
          $Res Function(PostListMetaDataModel) then) =
      _$PostListMetaDataModelCopyWithImpl<$Res, PostListMetaDataModel>;
  @useResult
  $Res call({int totalPage, int currentPage});
}

/// @nodoc
class _$PostListMetaDataModelCopyWithImpl<$Res,
        $Val extends PostListMetaDataModel>
    implements $PostListMetaDataModelCopyWith<$Res> {
  _$PostListMetaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostListMetaDataModelImplCopyWith<$Res>
    implements $PostListMetaDataModelCopyWith<$Res> {
  factory _$$PostListMetaDataModelImplCopyWith(
          _$PostListMetaDataModelImpl value,
          $Res Function(_$PostListMetaDataModelImpl) then) =
      __$$PostListMetaDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalPage, int currentPage});
}

/// @nodoc
class __$$PostListMetaDataModelImplCopyWithImpl<$Res>
    extends _$PostListMetaDataModelCopyWithImpl<$Res,
        _$PostListMetaDataModelImpl>
    implements _$$PostListMetaDataModelImplCopyWith<$Res> {
  __$$PostListMetaDataModelImplCopyWithImpl(_$PostListMetaDataModelImpl _value,
      $Res Function(_$PostListMetaDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalPage = null,
    Object? currentPage = null,
  }) {
    return _then(_$PostListMetaDataModelImpl(
      totalPage: null == totalPage
          ? _value.totalPage
          : totalPage // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostListMetaDataModelImpl
    with DiagnosticableTreeMixin
    implements _PostListMetaDataModel {
  const _$PostListMetaDataModelImpl(
      {required this.totalPage, required this.currentPage});

  factory _$PostListMetaDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListMetaDataModelImplFromJson(json);

  @override
  final int totalPage;
  @override
  final int currentPage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListMetaDataModel(totalPage: $totalPage, currentPage: $currentPage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostListMetaDataModel'))
      ..add(DiagnosticsProperty('totalPage', totalPage))
      ..add(DiagnosticsProperty('currentPage', currentPage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListMetaDataModelImpl &&
            (identical(other.totalPage, totalPage) ||
                other.totalPage == totalPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalPage, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListMetaDataModelImplCopyWith<_$PostListMetaDataModelImpl>
      get copyWith => __$$PostListMetaDataModelImplCopyWithImpl<
          _$PostListMetaDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListMetaDataModelImplToJson(
      this,
    );
  }
}

abstract class _PostListMetaDataModel implements PostListMetaDataModel {
  const factory _PostListMetaDataModel(
      {required final int totalPage,
      required final int currentPage}) = _$PostListMetaDataModelImpl;

  factory _PostListMetaDataModel.fromJson(Map<String, dynamic> json) =
      _$PostListMetaDataModelImpl.fromJson;

  @override
  int get totalPage;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$PostListMetaDataModelImplCopyWith<_$PostListMetaDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
