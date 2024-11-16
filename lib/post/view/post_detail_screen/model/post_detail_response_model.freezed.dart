// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostDetailResponseModel _$PostDetailResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PostDetailResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostDetailResponseModel {
  Post get post => throw _privateConstructorUsedError;
  ChatRoom get chatRoom => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostDetailResponseModelCopyWith<PostDetailResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailResponseModelCopyWith<$Res> {
  factory $PostDetailResponseModelCopyWith(PostDetailResponseModel value,
          $Res Function(PostDetailResponseModel) then) =
      _$PostDetailResponseModelCopyWithImpl<$Res, PostDetailResponseModel>;
  @useResult
  $Res call({Post post, ChatRoom chatRoom});

  $PostCopyWith<$Res> get post;
  $ChatRoomCopyWith<$Res> get chatRoom;
}

/// @nodoc
class _$PostDetailResponseModelCopyWithImpl<$Res,
        $Val extends PostDetailResponseModel>
    implements $PostDetailResponseModelCopyWith<$Res> {
  _$PostDetailResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? chatRoom = null,
  }) {
    return _then(_value.copyWith(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      chatRoom: null == chatRoom
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res> get post {
    return $PostCopyWith<$Res>(_value.post, (value) {
      return _then(_value.copyWith(post: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ChatRoomCopyWith<$Res> get chatRoom {
    return $ChatRoomCopyWith<$Res>(_value.chatRoom, (value) {
      return _then(_value.copyWith(chatRoom: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostDetailResponseModelImplCopyWith<$Res>
    implements $PostDetailResponseModelCopyWith<$Res> {
  factory _$$PostDetailResponseModelImplCopyWith(
          _$PostDetailResponseModelImpl value,
          $Res Function(_$PostDetailResponseModelImpl) then) =
      __$$PostDetailResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Post post, ChatRoom chatRoom});

  @override
  $PostCopyWith<$Res> get post;
  @override
  $ChatRoomCopyWith<$Res> get chatRoom;
}

/// @nodoc
class __$$PostDetailResponseModelImplCopyWithImpl<$Res>
    extends _$PostDetailResponseModelCopyWithImpl<$Res,
        _$PostDetailResponseModelImpl>
    implements _$$PostDetailResponseModelImplCopyWith<$Res> {
  __$$PostDetailResponseModelImplCopyWithImpl(
      _$PostDetailResponseModelImpl _value,
      $Res Function(_$PostDetailResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? post = null,
    Object? chatRoom = null,
  }) {
    return _then(_$PostDetailResponseModelImpl(
      post: null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
      chatRoom: null == chatRoom
          ? _value.chatRoom
          : chatRoom // ignore: cast_nullable_to_non_nullable
              as ChatRoom,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDetailResponseModelImpl implements _PostDetailResponseModel {
  const _$PostDetailResponseModelImpl(
      {required this.post, required this.chatRoom});

  factory _$PostDetailResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDetailResponseModelImplFromJson(json);

  @override
  final Post post;
  @override
  final ChatRoom chatRoom;

  @override
  String toString() {
    return 'PostDetailResponseModel(post: $post, chatRoom: $chatRoom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailResponseModelImpl &&
            (identical(other.post, post) || other.post == post) &&
            (identical(other.chatRoom, chatRoom) ||
                other.chatRoom == chatRoom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, post, chatRoom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailResponseModelImplCopyWith<_$PostDetailResponseModelImpl>
      get copyWith => __$$PostDetailResponseModelImplCopyWithImpl<
          _$PostDetailResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDetailResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PostDetailResponseModel implements PostDetailResponseModel {
  const factory _PostDetailResponseModel(
      {required final Post post,
      required final ChatRoom chatRoom}) = _$PostDetailResponseModelImpl;

  factory _PostDetailResponseModel.fromJson(Map<String, dynamic> json) =
      _$PostDetailResponseModelImpl.fromJson;

  @override
  Post get post;
  @override
  ChatRoom get chatRoom;
  @override
  @JsonKey(ignore: true)
  _$$PostDetailResponseModelImplCopyWith<_$PostDetailResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
mixin _$ChatRoom {
  int get id => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  dynamic get deletedAt => throw _privateConstructorUsedError;
  bool get isChatRoomMember => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res, ChatRoom>;
  @useResult
  $Res call(
      {int id, String createdAt, dynamic deletedAt, bool isChatRoomMember});
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res, $Val extends ChatRoom>
    implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? deletedAt = freezed,
    Object? isChatRoomMember = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isChatRoomMember: null == isChatRoomMember
          ? _value.isChatRoomMember
          : isChatRoomMember // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatRoomImplCopyWith<$Res>
    implements $ChatRoomCopyWith<$Res> {
  factory _$$ChatRoomImplCopyWith(
          _$ChatRoomImpl value, $Res Function(_$ChatRoomImpl) then) =
      __$$ChatRoomImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String createdAt, dynamic deletedAt, bool isChatRoomMember});
}

/// @nodoc
class __$$ChatRoomImplCopyWithImpl<$Res>
    extends _$ChatRoomCopyWithImpl<$Res, _$ChatRoomImpl>
    implements _$$ChatRoomImplCopyWith<$Res> {
  __$$ChatRoomImplCopyWithImpl(
      _$ChatRoomImpl _value, $Res Function(_$ChatRoomImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? deletedAt = freezed,
    Object? isChatRoomMember = null,
  }) {
    return _then(_$ChatRoomImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isChatRoomMember: null == isChatRoomMember
          ? _value.isChatRoomMember
          : isChatRoomMember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomImpl implements _ChatRoom {
  const _$ChatRoomImpl(
      {required this.id,
      required this.createdAt,
      required this.deletedAt,
      required this.isChatRoomMember});

  factory _$ChatRoomImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomImplFromJson(json);

  @override
  final int id;
  @override
  final String createdAt;
  @override
  final dynamic deletedAt;
  @override
  final bool isChatRoomMember;

  @override
  String toString() {
    return 'ChatRoom(id: $id, createdAt: $createdAt, deletedAt: $deletedAt, isChatRoomMember: $isChatRoomMember)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.isChatRoomMember, isChatRoomMember) ||
                other.isChatRoomMember == isChatRoomMember));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt,
      const DeepCollectionEquality().hash(deletedAt), isChatRoomMember);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      __$$ChatRoomImplCopyWithImpl<_$ChatRoomImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomImplToJson(
      this,
    );
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom(
      {required final int id,
      required final String createdAt,
      required final dynamic deletedAt,
      required final bool isChatRoomMember}) = _$ChatRoomImpl;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) =
      _$ChatRoomImpl.fromJson;

  @override
  int get id;
  @override
  String get createdAt;
  @override
  dynamic get deletedAt;
  @override
  bool get isChatRoomMember;
  @override
  @JsonKey(ignore: true)
  _$$ChatRoomImplCopyWith<_$ChatRoomImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String get restaurantName => throw _privateConstructorUsedError;
  String get categoryCode => throw _privateConstructorUsedError;
  int get deliveryFee => throw _privateConstructorUsedError;
  int get minOrderFee => throw _privateConstructorUsedError;
  MeetLocation get meetLocation => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  List<PostImage> get images => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  bool get isPostCreator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {int id,
      String nickname,
      String? content,
      String restaurantName,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      MeetLocation meetLocation,
      bool status,
      List<PostImage> images,
      String createdAt,
      String updatedAt,
      bool isPostCreator});

  $MeetLocationCopyWith<$Res> get meetLocation;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? content = freezed,
    Object? restaurantName = null,
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? meetLocation = null,
    Object? status = null,
    Object? images = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isPostCreator = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderFee: null == minOrderFee
          ? _value.minOrderFee
          : minOrderFee // ignore: cast_nullable_to_non_nullable
              as int,
      meetLocation: null == meetLocation
          ? _value.meetLocation
          : meetLocation // ignore: cast_nullable_to_non_nullable
              as MeetLocation,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isPostCreator: null == isPostCreator
          ? _value.isPostCreator
          : isPostCreator // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MeetLocationCopyWith<$Res> get meetLocation {
    return $MeetLocationCopyWith<$Res>(_value.meetLocation, (value) {
      return _then(_value.copyWith(meetLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String nickname,
      String? content,
      String restaurantName,
      String categoryCode,
      int deliveryFee,
      int minOrderFee,
      MeetLocation meetLocation,
      bool status,
      List<PostImage> images,
      String createdAt,
      String updatedAt,
      bool isPostCreator});

  @override
  $MeetLocationCopyWith<$Res> get meetLocation;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? nickname = null,
    Object? content = freezed,
    Object? restaurantName = null,
    Object? categoryCode = null,
    Object? deliveryFee = null,
    Object? minOrderFee = null,
    Object? meetLocation = null,
    Object? status = null,
    Object? images = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isPostCreator = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      nickname: null == nickname
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      restaurantName: null == restaurantName
          ? _value.restaurantName
          : restaurantName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryCode: null == categoryCode
          ? _value.categoryCode
          : categoryCode // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryFee: null == deliveryFee
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as int,
      minOrderFee: null == minOrderFee
          ? _value.minOrderFee
          : minOrderFee // ignore: cast_nullable_to_non_nullable
              as int,
      meetLocation: null == meetLocation
          ? _value.meetLocation
          : meetLocation // ignore: cast_nullable_to_non_nullable
              as MeetLocation,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<PostImage>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isPostCreator: null == isPostCreator
          ? _value.isPostCreator
          : isPostCreator // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl(
      {required this.id,
      required this.nickname,
      required this.content,
      required this.restaurantName,
      required this.categoryCode,
      required this.deliveryFee,
      required this.minOrderFee,
      required this.meetLocation,
      required this.status,
      required final List<PostImage> images,
      required this.createdAt,
      required this.updatedAt,
      required this.isPostCreator})
      : _images = images;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final int id;
  @override
  final String nickname;
  @override
  final String? content;
  @override
  final String restaurantName;
  @override
  final String categoryCode;
  @override
  final int deliveryFee;
  @override
  final int minOrderFee;
  @override
  final MeetLocation meetLocation;
  @override
  final bool status;
  final List<PostImage> _images;
  @override
  List<PostImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final bool isPostCreator;

  @override
  String toString() {
    return 'Post(id: $id, nickname: $nickname, content: $content, restaurantName: $restaurantName, categoryCode: $categoryCode, deliveryFee: $deliveryFee, minOrderFee: $minOrderFee, meetLocation: $meetLocation, status: $status, images: $images, createdAt: $createdAt, updatedAt: $updatedAt, isPostCreator: $isPostCreator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nickname, nickname) ||
                other.nickname == nickname) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.restaurantName, restaurantName) ||
                other.restaurantName == restaurantName) &&
            (identical(other.categoryCode, categoryCode) ||
                other.categoryCode == categoryCode) &&
            (identical(other.deliveryFee, deliveryFee) ||
                other.deliveryFee == deliveryFee) &&
            (identical(other.minOrderFee, minOrderFee) ||
                other.minOrderFee == minOrderFee) &&
            (identical(other.meetLocation, meetLocation) ||
                other.meetLocation == meetLocation) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isPostCreator, isPostCreator) ||
                other.isPostCreator == isPostCreator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      nickname,
      content,
      restaurantName,
      categoryCode,
      deliveryFee,
      minOrderFee,
      meetLocation,
      status,
      const DeepCollectionEquality().hash(_images),
      createdAt,
      updatedAt,
      isPostCreator);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post implements Post {
  const factory _Post(
      {required final int id,
      required final String nickname,
      required final String? content,
      required final String restaurantName,
      required final String categoryCode,
      required final int deliveryFee,
      required final int minOrderFee,
      required final MeetLocation meetLocation,
      required final bool status,
      required final List<PostImage> images,
      required final String createdAt,
      required final String updatedAt,
      required final bool isPostCreator}) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int get id;
  @override
  String get nickname;
  @override
  String? get content;
  @override
  String get restaurantName;
  @override
  String get categoryCode;
  @override
  int get deliveryFee;
  @override
  int get minOrderFee;
  @override
  MeetLocation get meetLocation;
  @override
  bool get status;
  @override
  List<PostImage> get images;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  bool get isPostCreator;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MeetLocation _$MeetLocationFromJson(Map<String, dynamic> json) {
  return _MeetLocation.fromJson(json);
}

/// @nodoc
mixin _$MeetLocation {
  String get address => throw _privateConstructorUsedError;
  String get shortAddress => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetLocationCopyWith<MeetLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetLocationCopyWith<$Res> {
  factory $MeetLocationCopyWith(
          MeetLocation value, $Res Function(MeetLocation) then) =
      _$MeetLocationCopyWithImpl<$Res, MeetLocation>;
  @useResult
  $Res call(
      {String address, String shortAddress, double latitude, double longitude});
}

/// @nodoc
class _$MeetLocationCopyWithImpl<$Res, $Val extends MeetLocation>
    implements $MeetLocationCopyWith<$Res> {
  _$MeetLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? shortAddress = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MeetLocationImplCopyWith<$Res>
    implements $MeetLocationCopyWith<$Res> {
  factory _$$MeetLocationImplCopyWith(
          _$MeetLocationImpl value, $Res Function(_$MeetLocationImpl) then) =
      __$$MeetLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String address, String shortAddress, double latitude, double longitude});
}

/// @nodoc
class __$$MeetLocationImplCopyWithImpl<$Res>
    extends _$MeetLocationCopyWithImpl<$Res, _$MeetLocationImpl>
    implements _$$MeetLocationImplCopyWith<$Res> {
  __$$MeetLocationImplCopyWithImpl(
      _$MeetLocationImpl _value, $Res Function(_$MeetLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? shortAddress = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$MeetLocationImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      shortAddress: null == shortAddress
          ? _value.shortAddress
          : shortAddress // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetLocationImpl implements _MeetLocation {
  const _$MeetLocationImpl(
      {required this.address,
      required this.shortAddress,
      required this.latitude,
      required this.longitude});

  factory _$MeetLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetLocationImplFromJson(json);

  @override
  final String address;
  @override
  final String shortAddress;
  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'MeetLocation(address: $address, shortAddress: $shortAddress, latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetLocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.shortAddress, shortAddress) ||
                other.shortAddress == shortAddress) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, address, shortAddress, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetLocationImplCopyWith<_$MeetLocationImpl> get copyWith =>
      __$$MeetLocationImplCopyWithImpl<_$MeetLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetLocationImplToJson(
      this,
    );
  }
}

abstract class _MeetLocation implements MeetLocation {
  const factory _MeetLocation(
      {required final String address,
      required final String shortAddress,
      required final double latitude,
      required final double longitude}) = _$MeetLocationImpl;

  factory _MeetLocation.fromJson(Map<String, dynamic> json) =
      _$MeetLocationImpl.fromJson;

  @override
  String get address;
  @override
  String get shortAddress;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$MeetLocationImplCopyWith<_$MeetLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostImage _$PostImageFromJson(Map<String, dynamic> json) {
  return _PostImage.fromJson(json);
}

/// @nodoc
mixin _$PostImage {
  int get id => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostImageCopyWith<PostImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostImageCopyWith<$Res> {
  factory $PostImageCopyWith(PostImage value, $Res Function(PostImage) then) =
      _$PostImageCopyWithImpl<$Res, PostImage>;
  @useResult
  $Res call({int id, String imageName, DateTime createdAt});
}

/// @nodoc
class _$PostImageCopyWithImpl<$Res, $Val extends PostImage>
    implements $PostImageCopyWith<$Res> {
  _$PostImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageName = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostImageImplCopyWith<$Res>
    implements $PostImageCopyWith<$Res> {
  factory _$$PostImageImplCopyWith(
          _$PostImageImpl value, $Res Function(_$PostImageImpl) then) =
      __$$PostImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String imageName, DateTime createdAt});
}

/// @nodoc
class __$$PostImageImplCopyWithImpl<$Res>
    extends _$PostImageCopyWithImpl<$Res, _$PostImageImpl>
    implements _$$PostImageImplCopyWith<$Res> {
  __$$PostImageImplCopyWithImpl(
      _$PostImageImpl _value, $Res Function(_$PostImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageName = null,
    Object? createdAt = null,
  }) {
    return _then(_$PostImageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImageImpl implements _PostImage {
  const _$PostImageImpl(
      {required this.id, required this.imageName, required this.createdAt});

  factory _$PostImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImageImplFromJson(json);

  @override
  final int id;
  @override
  final String imageName;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'PostImage(id: $id, imageName: $imageName, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, imageName, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImageImplCopyWith<_$PostImageImpl> get copyWith =>
      __$$PostImageImplCopyWithImpl<_$PostImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImageImplToJson(
      this,
    );
  }
}

abstract class _PostImage implements PostImage {
  const factory _PostImage(
      {required final int id,
      required final String imageName,
      required final DateTime createdAt}) = _$PostImageImpl;

  factory _PostImage.fromJson(Map<String, dynamic> json) =
      _$PostImageImpl.fromJson;

  @override
  int get id;
  @override
  String get imageName;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PostImageImplCopyWith<_$PostImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
