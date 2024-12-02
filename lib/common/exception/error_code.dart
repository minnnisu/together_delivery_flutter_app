enum ErrorCode {
  // 공통 에러
  NotValidRequestError(null),
  NotValidRequestBodyError(null),
  MissingQueryParamError( null),
  InternalServerError("알 수 없는 오류가 발생하였습니다."),
  RequestCancelError(null),
  BadResponseError(null),
  ConnectionTimeoutError("네트워크가 불안정합니다."),
  ReceiveTimeoutError(null),
  SendTimeoutError(null),

  UserNotFoundError(null),

  // 네트워크 관련 에러
  NetworkConnectionError("인터넷이 연결되어있지 않습니다."),
  TimeOutError(null),

  // 예상치 못한 에러
  UnknownError("일시적인 오류가 발생하였습니다."),

  // 유효성 에러
  DuplicatedNicknameError("중복된 닉네임입니다."),
  DuplicatedUsernameError("중복된 아이디입니다."),
  NotValidInputError("입력값이 유효하지 않습니다."),
  OnlyNumberInputError("숫자만 입력 가능합니다."),

  // 토큰 관련 에러
  TokenReissueError("재로그인이 필요합니다."),
  NoTokenError("재로그인이 필요합니다.")
  ;

  const ErrorCode(this.message);
  final String? message;
}