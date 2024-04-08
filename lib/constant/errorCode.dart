enum ErrorCode{
  NO_TOKEN_ERROR("토큰이 존재하지않아 로그아웃 되었습니다."),
  ACCESS_TOKEN_REFRESH_ERROR("토큰을 재발급하는데 실패하였습니다."),
  USER_NOT_FOUND_ERROR("존재하지 않은 유저입니다.")
  ;

  final String message;
  const ErrorCode(this.message);
}