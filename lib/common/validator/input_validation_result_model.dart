import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_validation_result_model.freezed.dart';

@freezed
class InputValidationResultModel with _$InputValidationResultModel {
  const factory InputValidationResultModel({
    required bool isValid,
    required String? message,
  }) = _InputValidationResultModel;
}