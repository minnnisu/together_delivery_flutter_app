class User {
  String username;
  String password;
  String passwordCheck;
  String name;
  String nickname;
  String email;
  String telephone;
  String college;

  User({
    required this.username,
    required this.password,
    required this.passwordCheck,
    required this.name,
    required this.nickname,
    required this.email,
    required this.telephone,
    required this.college,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      password: json['password'],
      passwordCheck: json['passwordCheck'],
      name: json['name'],
      nickname: json['nickname'],
      email: json['email'],
      telephone: json['telephone'],
      college: json['college'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'passwordCheck': passwordCheck,
      'name': name,
      'nickname': nickname,
      'email': email,
      'telephone': telephone,
      'college': college,
    };
  }
}