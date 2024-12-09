import 'dart:convert';

PostStatusToggleResponseModel postStatusToggleResponseModelFromJson(String str) => PostStatusToggleResponseModel.fromJson(json.decode(str));

String postStatusToggleResponseModelToJson(PostStatusToggleResponseModel data) => json.encode(data.toJson());

class PostStatusToggleResponseModel {
  int postId;
  bool status;

  PostStatusToggleResponseModel({
    required this.postId,
    required this.status,
  });

  PostStatusToggleResponseModel copyWith({
    int? postId,
    bool? status,
  }) =>
      PostStatusToggleResponseModel(
        postId: postId ?? this.postId,
        status: status ?? this.status,
      );

  factory PostStatusToggleResponseModel.fromJson(Map<String, dynamic> json) => PostStatusToggleResponseModel(
    postId: json["postId"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "postId": postId,
    "status": status,
  };
}
