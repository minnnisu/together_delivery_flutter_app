class Post {
  final int id;
  final String username;
  final String title;
  final String content;
  final String restaurantName;
  final String categoryCode;
  final int deliveryFee;
  final int minOrderFee;
  final String location;
  final String createdAt;
  final String updatedAt;

  Post({
    required this.id,
    required this.username,
    required this.title,
    required this.content,
    required this.restaurantName,
    required this.categoryCode,
    required this.deliveryFee,
    required this.minOrderFee,
    required this.location,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'] as int,
      username: json['username'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      restaurantName: json['restaurantName'] as String,
      categoryCode: json['categoryCode'] as String,
      deliveryFee: json['deliveryFee'] as int,
      minOrderFee: json['minOrderFee'] as int,
      location: json['location'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'title': title,
      'content': content,
      'restaurantName': restaurantName,
      'categoryCode': categoryCode,
      'deliveryFee': deliveryFee,
      'minOrderFee': minOrderFee,
      'location': location,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}