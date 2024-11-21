class ApiUrl {
  // static var baseUrl = 'http://192.168.0.56:8080' ;
  static var baseUrl = 'http://10.0.2.2:8080';

  static var login = "$baseUrl/login";
  static var signup = "$baseUrl/auth/signup";
  static var userIdDuplicationCheck = "$baseUrl/auth/check/username";
  static var nicknameDuplicationCheck = "$baseUrl/auth/check/nickname";
  static var userInfoGet = "$baseUrl/api/user";
  static var tokenReissue = "$baseUrl/api/auth/refreshToken";

  static var postGet = baseUrl + "/api/post";
  static var postDetailGet = baseUrl + "/api/post";
  static var postDetailPost = baseUrl + '/api/post';
  static var postDetailPostImage = baseUrl + '/images/post';

  static var chatRoomCreate = baseUrl + '/api/chat/room';

  static var userRegister = baseUrl + "/auth/signup";
  static var usernameDuplicationCheck = baseUrl + "/auth/check/username";
  static var logout = baseUrl + "/auth/logout";
  static var tokenRefresh = baseUrl + "/auth/refreshToken";
  static var userInfoGetPath = "/api/auth";
}
