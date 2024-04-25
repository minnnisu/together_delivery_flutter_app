enum ErrorCode{
  NO_TOKEN_ERROR("토큰이 존재하지않아 로그아웃 되었습니다."),
  NOT_VALID_INPUT_FORM_ERROR("입력한 값들이 유효하지 않습니다.")
  ;

  final String message;
  const ErrorCode(this.message);
}