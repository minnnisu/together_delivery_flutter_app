import 'package:together_delivery_app/common/util/money_convertor.dart';
import 'package:together_delivery_app/common/validator/input_validation_result_model.dart';
import 'package:together_delivery_app/post/model/meet_location_model.dart';

import 'const/post_input_form_field_type.dart';

class PostInputValidator {
  final _onlyNumberRegExp = RegExp(r'^[0-9]+$');

  InputValidationResultModel validate(
      PostInputFormFieldType type, Object? value) {
    if (type == PostInputFormFieldType.restaurantCategory) {
      return _validateRestaurantCategory();
    }

    if (type == PostInputFormFieldType.restaurantName) {
      return _validateRestaurantName(value as String);
    }

    if (type == PostInputFormFieldType.deliveryFee) {
      return _validateDeliveryFee(value as String);
    }

    if (type == PostInputFormFieldType.minOrderFee) {
      return _validateMinOrderFee(value as String);
    }

    if (type == PostInputFormFieldType.content) {
     return _validateContent();
    }

    if (type == PostInputFormFieldType.meetLocation) {
     return _validateMeetLocation(value as MeetLocationModel?);
    }

    if (type == PostInputFormFieldType.addressDescription) {
      return _validateAddressDescription(value as String);
    }

    return InputValidationResultModel(isValid: false, message: "존재하지 않은 필드입니다.");
  }

  InputValidationResultModel _validateRestaurantName(String value) {
      String typedValue = value;
      if (typedValue.isEmpty) {
        return InputValidationResultModel(isValid: false, message: '가게이름을 입력해주세요');
      }
      if (typedValue.length < 2 || typedValue.length > 20) {
        return InputValidationResultModel(isValid: false, message: '가게이름은 2글자 이상 20글자 이하로만 입력 가능합니다.');
      }
      return InputValidationResultModel(isValid: true, message: null);
  }

  InputValidationResultModel _validateRestaurantCategory() {
    return InputValidationResultModel(isValid: true, message: null);
  }

  InputValidationResultModel _validateContent() {
    return InputValidationResultModel(isValid: true, message: null);
  }

  InputValidationResultModel _validateDeliveryFee(String value) {
    String typedValue = value;
    if (typedValue.isEmpty) {
      return InputValidationResultModel(isValid: false, message: '배달비를 입력해주세요');
    }
    typedValue = MoneyConvertor.removeCommasFromNumber(typedValue);
    if (!_onlyNumberRegExp.hasMatch(typedValue)) {
      return InputValidationResultModel(
        isValid: false,
        message: '배달비는 숫자만 가능합니다.',
      );
    }

    try {
      if (int.parse(typedValue) < 0 || int.parse(typedValue) > 10000) {
        return InputValidationResultModel(
            isValid: false, message: '배달비는 10,000원 이하로만 입력이 가능합니다.');
      }
    } catch (e) {
      return InputValidationResultModel(
        isValid: false,
        message: '배달비는 숫자만 가능합니다.',
      );
    }
    return InputValidationResultModel(isValid: true, message: null);
  }

  InputValidationResultModel _validateMinOrderFee(String value) {
    String typedValue = value;
    if (typedValue.isEmpty) {
      return InputValidationResultModel(
          isValid: false, message: '최소주문금액을 입력해주세요');
    }

    typedValue = MoneyConvertor.removeCommasFromNumber(typedValue);
    if (!_onlyNumberRegExp.hasMatch(typedValue)) {
      return InputValidationResultModel(
        isValid: false,
        message: '최소주문금액은 숫자만 가능합니다.',
      );
    }

    try {
      if (int.parse(typedValue) < 0 || int.parse(typedValue) > 100000) {
        return InputValidationResultModel(
            isValid: false, message: '최소주문금액은 100,000원 이하로만 입력 가능합니다.');
      }
    } catch (e) {
      return InputValidationResultModel(
        isValid: false,
        message: '최소주문금액은 숫자만 가능합니다.',
      );
    }
    return InputValidationResultModel(isValid: true, message: null);
  }

  InputValidationResultModel _validateMeetLocation(MeetLocationModel? value) {
    MeetLocationModel? typedValue = value;
    if (typedValue == null) {
      return InputValidationResultModel(isValid: false, message: '만남장소를 지정해주세요');
    }
    return InputValidationResultModel(isValid: true, message: null);
  }

  InputValidationResultModel _validateAddressDescription(String value){
    String typedValue = value;
    if (typedValue.isEmpty) {
      return InputValidationResultModel(isValid: false, message: '위치에 대한 설명을 입력해주세요');
    }
    if (typedValue.length < 2 || typedValue.length > 20) {
      return InputValidationResultModel(isValid: false, message: '제목은 2글자 이상 20글자 이하로만 입력 가능합니다.');
    }
    return InputValidationResultModel(isValid: true, message: null);
  }
}
