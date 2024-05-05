// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentPageModel {
  CommentPageStatusType get status => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  String get bottomMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentPageModelCopyWith<CommentPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentPageModelCopyWith<$Res> {
  factory $CommentPageModelCopyWith(
          CommentPageModel value, $Res Function(CommentPageModel) then) =
      _$CommentPageModelCopyWithImpl<$Res, CommentPageModel>;
  @useResult
  $Res call(
      {CommentPageStatusType status, int currentPage, String bottomMessage});
}

/// @nodoc
class _$CommentPageModelCopyWithImpl<$Res, $Val extends CommentPageModel>
    implements $CommentPageModelCopyWith<$Res> {
  _$CommentPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPage = null,
    Object? bottomMessage = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentPageStatusType,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      bottomMessage: null == bottomMessage
          ? _value.bottomMessage
          : bottomMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentPageModelImplCopyWith<$Res>
    implements $CommentPageModelCopyWith<$Res> {
  factory _$$CommentPageModelImplCopyWith(_$CommentPageModelImpl value,
          $Res Function(_$CommentPageModelImpl) then) =
      __$$CommentPageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CommentPageStatusType status, int currentPage, String bottomMessage});
}

/// @nodoc
class __$$CommentPageModelImplCopyWithImpl<$Res>
    extends _$CommentPageModelCopyWithImpl<$Res, _$CommentPageModelImpl>
    implements _$$CommentPageModelImplCopyWith<$Res> {
  __$$CommentPageModelImplCopyWithImpl(_$CommentPageModelImpl _value,
      $Res Function(_$CommentPageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? currentPage = null,
    Object? bottomMessage = null,
  }) {
    return _then(_$CommentPageModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CommentPageStatusType,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      bottomMessage: null == bottomMessage
          ? _value.bottomMessage
          : bottomMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommentPageModelImpl implements _CommentPageModel {
  const _$CommentPageModelImpl(
      {required this.status,
      required this.currentPage,
      required this.bottomMessage});

  @override
  final CommentPageStatusType status;
  @override
  final int currentPage;
  @override
  final String bottomMessage;

  @override
  String toString() {
    return 'CommentPageModel(status: $status, currentPage: $currentPage, bottomMessage: $bottomMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentPageModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.bottomMessage, bottomMessage) ||
                other.bottomMessage == bottomMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, currentPage, bottomMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentPageModelImplCopyWith<_$CommentPageModelImpl> get copyWith =>
      __$$CommentPageModelImplCopyWithImpl<_$CommentPageModelImpl>(
          this, _$identity);
}

abstract class _CommentPageModel implements CommentPageModel {
  const factory _CommentPageModel(
      {required final CommentPageStatusType status,
      required final int currentPage,
      required final String bottomMessage}) = _$CommentPageModelImpl;

  @override
  CommentPageStatusType get status;
  @override
  int get currentPage;
  @override
  String get bottomMessage;
  @override
  @JsonKey(ignore: true)
  _$$CommentPageModelImplCopyWith<_$CommentPageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
