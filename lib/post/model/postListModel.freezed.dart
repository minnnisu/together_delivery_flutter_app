// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'postListModel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostListModel _$PostListModelFromJson(Map<String, dynamic> json) {
  return _PostListModel.fromJson(json);
}

/// @nodoc
mixin _$PostListModel {
  PostListMetaDataModel get metaData => throw _privateConstructorUsedError;
  List<PostSummaryModel> get posts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostListModelCopyWith<PostListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListModelCopyWith<$Res> {
  factory $PostListModelCopyWith(
          PostListModel value, $Res Function(PostListModel) then) =
      _$PostListModelCopyWithImpl<$Res, PostListModel>;
  @useResult
  $Res call({PostListMetaDataModel metaData, List<PostSummaryModel> posts});

  $PostListMetaDataModelCopyWith<$Res> get metaData;
}

/// @nodoc
class _$PostListModelCopyWithImpl<$Res, $Val extends PostListModel>
    implements $PostListModelCopyWith<$Res> {
  _$PostListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaData = null,
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as PostListMetaDataModel,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostSummaryModel>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostListMetaDataModelCopyWith<$Res> get metaData {
    return $PostListMetaDataModelCopyWith<$Res>(_value.metaData, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostListModelImplCopyWith<$Res>
    implements $PostListModelCopyWith<$Res> {
  factory _$$PostListModelImplCopyWith(
          _$PostListModelImpl value, $Res Function(_$PostListModelImpl) then) =
      __$$PostListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PostListMetaDataModel metaData, List<PostSummaryModel> posts});

  @override
  $PostListMetaDataModelCopyWith<$Res> get metaData;
}

/// @nodoc
class __$$PostListModelImplCopyWithImpl<$Res>
    extends _$PostListModelCopyWithImpl<$Res, _$PostListModelImpl>
    implements _$$PostListModelImplCopyWith<$Res> {
  __$$PostListModelImplCopyWithImpl(
      _$PostListModelImpl _value, $Res Function(_$PostListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaData = null,
    Object? posts = null,
  }) {
    return _then(_$PostListModelImpl(
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as PostListMetaDataModel,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<PostSummaryModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$PostListModelImpl
    with DiagnosticableTreeMixin
    implements _PostListModel {
  const _$PostListModelImpl(
      {required this.metaData, required final List<PostSummaryModel> posts})
      : _posts = posts;

  factory _$PostListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostListModelImplFromJson(json);

  @override
  final PostListMetaDataModel metaData;
  final List<PostSummaryModel> _posts;
  @override
  List<PostSummaryModel> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PostListModel(metaData: $metaData, posts: $posts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PostListModel'))
      ..add(DiagnosticsProperty('metaData', metaData))
      ..add(DiagnosticsProperty('posts', posts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListModelImpl &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData) &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, metaData, const DeepCollectionEquality().hash(_posts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListModelImplCopyWith<_$PostListModelImpl> get copyWith =>
      __$$PostListModelImplCopyWithImpl<_$PostListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostListModelImplToJson(
      this,
    );
  }
}

abstract class _PostListModel implements PostListModel {
  const factory _PostListModel(
      {required final PostListMetaDataModel metaData,
      required final List<PostSummaryModel> posts}) = _$PostListModelImpl;

  factory _PostListModel.fromJson(Map<String, dynamic> json) =
      _$PostListModelImpl.fromJson;

  @override
  PostListMetaDataModel get metaData;
  @override
  List<PostSummaryModel> get posts;
  @override
  @JsonKey(ignore: true)
  _$$PostListModelImplCopyWith<_$PostListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
