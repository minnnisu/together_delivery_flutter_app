enum ErrorCode {
  // 공통 에러
  NotValidRequestError("유효하지 않은 요청입니다."),
  NotValidRequestBodyError("유효하지 않은 요청 본문입니다."),
  MissingQueryParamError( "해당 파라미터의 값이 존재하지 않습니다."),
  InternalServerError("알 수 없는 오류가 발생하였습니다. 문제가 지속되면 관리자에게 문의하세요."),
  RequestCancelError("요청이 중지되었습니다."),
  BadResponseError("요청에 문제가 발생하였습니다."),
  ConnectionTimeoutError("연결시간을 초과하였습니다."),
  ReceiveTimeoutError("응답시간을 초과하였습니다."),
  SendTimeoutError("요청시간을 초과하였습니다."),

  UserNotFoundError("존재하지 않은 유저입니다."),

  // 네트워크 관련 에러
  NetworkConnectionError("인터넷이 연결되어있지 않습니다."),
  TimeOutError("요청 시간이 초과되었습니다."),

  // 예상치 못한 에러
  UnknownError("일시적인 오류가 발생하였습니다."),
  NaverLoginFailError("네이버 로그인에 실패하였습니다."),

  // 카카오 로그인 관련 에러
  KakaoLoginCancelByUserError("카카오 로그인에 실패하였습니다."),
  KakaoLoginFailError("카카오 로그인에 실패하였습니다."),

  // 네이버 로그인 관련 에러
  NaverLoginCancelByUserError("네이버 로그인에 실패하였습니다"),

  DuplicatedNicknameError("중복된 닉네임입니다."),
  NotValidInputError("입력값이 유효하지 않습니다."),

  // 토큰 관련 에러
  TokenReissueError("재로그인이 필요합니다."),
  NoTokenError("재로그인이 필요합니다.")
  ;

  const ErrorCode(this.message);
  final String message;
}