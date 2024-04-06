class SignupInput {
  String username;
  String usernameErrMsg;
  String password;
  String passwordErrMsg;
  String passwordCheck;
  String passwordCheckErrMsg;
  String name;
  String nameErrMsg;
  String nickname;
  String nicknameErrMsg;
  String email;
  String emailErrMsg;
  String telephone;
  String telephoneErrMsg;
  String college;
  String collegeErrMsg;

  SignupInput({
    required this.username,
    required this.usernameErrMsg,
    required this.password,
    required this.passwordErrMsg,
    required this.passwordCheck,
    required this.passwordCheckErrMsg,
    required this.name,
    required this.nameErrMsg,
    required this.nickname,
    required this.nicknameErrMsg,
    required this.email,
    required this.emailErrMsg,
    required this.telephone,
    required this.telephoneErrMsg,
    required this.college,
    required this.collegeErrMsg,
  });

  SignupInput copyWith({
    String? username,
    String? usernameErrMsg,
    String? password,
    String? passwordErrMsg,
    String? passwordCheck,
    String? passwordCheckErrMsg,
    String? name,
    String? nameErrMsg,
    String? nickname,
    String? nicknameErrMsg,
    String? email,
    String? emailErrMsg,
    String? telephone,
    String? telephoneErrMsg,
    String? college,
    String? collegeErrMsg,
  }) {
    print("this.username: " + this.username);

    return SignupInput(
      username: username ?? this.username,
      usernameErrMsg: usernameErrMsg ?? this.usernameErrMsg,
      password: password ?? this.password,
      passwordErrMsg: passwordErrMsg ?? this.passwordErrMsg,
      passwordCheck: passwordCheck ?? this.passwordCheck,
      passwordCheckErrMsg: passwordCheckErrMsg ?? this.passwordCheckErrMsg,
      name: name ?? this.name,
      nameErrMsg: nameErrMsg ?? this.nameErrMsg,
      nickname: nickname ?? this.nickname,
      nicknameErrMsg: nicknameErrMsg ?? this.nicknameErrMsg,
      email: email ?? this.email,
      emailErrMsg: emailErrMsg ?? this.emailErrMsg,
      telephone: telephone ?? this.telephone,
      telephoneErrMsg: telephoneErrMsg ?? this.telephoneErrMsg,
      college: college ?? this.college,
      collegeErrMsg: collegeErrMsg ?? this.collegeErrMsg,
    );
  }
}