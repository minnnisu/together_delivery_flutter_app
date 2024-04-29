// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentListModel _$CommentListModelFromJson(Map<String, dynamic> json) {
  return _CommentListModel.fromJson(json);
}

/// @nodoc
mixin _$CommentListModel {
  List<CommentModel> get comments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommentListModelCopyWith<CommentListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentListModelCopyWith<$Res> {
  factory $CommentListModelCopyWith(
          CommentListModel value, $Res Function(CommentListModel) then) =
      _$CommentListModelCopyWithImpl<$Res, CommentListModel>;
  @useResult
  $Res call({List<CommentModel> comments});
}

/// @nodoc
class _$CommentListModelCopyWithImpl<$Res, $Val extends CommentListModel>
    implements $CommentListModelCopyWith<$Res> {
  _$CommentListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentListModelImplCopyWith<$Res>
    implements $CommentListModelCopyWith<$Res> {
  factory _$$CommentListModelImplCopyWith(_$CommentListModelImpl value,
          $Res Function(_$CommentListModelImpl) then) =
      __$$CommentListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentModel> comments});
}

/// @nodoc
class __$$CommentListModelImplCopyWithImpl<$Res>
    extends _$CommentListModelCopyWithImpl<$Res, _$CommentListModelImpl>
    implements _$$CommentListModelImplCopyWith<$Res> {
  __$$CommentListModelImplCopyWithImpl(_$CommentListModelImpl _value,
      $Res Function(_$CommentListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = null,
  }) {
    return _then(_$CommentListModelImpl(
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentListModelImpl implements _CommentListModel {
  const _$CommentListModelImpl({required final List<CommentModel> comments})
      : _comments = comments;

  factory _$CommentListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentListModelImplFromJson(json);

  final List<CommentModel> _comments;
  @override
  List<CommentModel> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  @override
  String toString() {
    return 'CommentListModel(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentListModelImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentListModelImplCopyWith<_$CommentListModelImpl> get copyWith =>
      __$$CommentListModelImplCopyWithImpl<_$CommentListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentListModelImplToJson(
      this,
    );
  }
}

abstract class _CommentListModel implements CommentListModel {
  const factory _CommentListModel(
      {required final List<CommentModel> comments}) = _$CommentListModelImpl;

  factory _CommentListModel.fromJson(Map<String, dynamic> json) =
      _$CommentListModelImpl.fromJson;

  @override
  List<CommentModel> get comments;
  @override
  @JsonKey(ignore: true)
  _$$CommentListModelImplCopyWith<_$CommentListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
