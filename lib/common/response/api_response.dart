import '../exception/custom_exception.dart';
import 'Status.dart';

class ApiResponse<T> {
  Status? status;
  T? data;
  CustomException? exception;

  ApiResponse(this.status, this.data, this.exception);

  ApiResponse.loading(): status = Status.loading;

  ApiResponse.completed(this.data): status = Status.completed;

  ApiResponse.error(this.exception): status = Status.error;

  @override
  String toString(){
    return "Status : $status \n Message : $exception \n Data: $data" ;
  }
}