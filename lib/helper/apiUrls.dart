class apiUrls {
  static const String baseUrl = "http://192.168.0.2:8080";

  static const String postGet = baseUrl + "/api/post";

  static const String userRegister = baseUrl + "/auth/signup";

  static const String usernameDuplicationCheck = baseUrl + "/auth/check/username";

  static const String nicknameDuplicationCheck = baseUrl + "/auth/check/nickname";

  static const String login = baseUrl + "/login";

  static const String logout = baseUrl + "/auth/logout";

  static const String tokenRefresh = baseUrl + "/auth/refreshToken";

  static const String userInfoGetPath = "/api/user";

  static const String userInfoGet = baseUrl + "/api/user";
}