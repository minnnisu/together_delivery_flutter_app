import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';

class PostCreateState {
  PostStringInput content;
  RestaurantCategory restaurant;
  PostStringInput restaurantName;
  PostNumberInput deliveryFee;
  PostNumberInput minOrderFee;
  PostMeetLocationInput meetLocation;
  PostStringInput shortAddress;
  List<Asset> images;

  PostCreateState({
    required this.content,
    required this.restaurant,
    required this.restaurantName,
    required this.deliveryFee,
    required this.minOrderFee,
    required this.meetLocation,
    required this.shortAddress,
    required this.images,
  });

  PostCreateState copyWith({
    PostStringInput? content,
    RestaurantCategory? restaurant,
    PostStringInput? restaurantName,
    PostNumberInput? deliveryFee,
    PostNumberInput? minOrderFee,
    PostMeetLocationInput? meetLocation,
    PostStringInput? shortAddress,
    List<Asset>? images,
  }) =>
      PostCreateState(
        content: content ?? this.content,
        restaurant: restaurant ?? this.restaurant,
        restaurantName: restaurantName ?? this.restaurantName,
        deliveryFee: deliveryFee ?? this.deliveryFee,
        minOrderFee: minOrderFee ?? this.minOrderFee,
        meetLocation: meetLocation ?? this.meetLocation,
        shortAddress: shortAddress ?? this.shortAddress,
        images: images ?? this.images,
      );

  PostCreateState.init()
      : content = PostStringInput.init(),
        restaurant = RestaurantCategory.AMERICAN_FOOD,
        restaurantName = PostStringInput.init(),
        deliveryFee = PostNumberInput.init(),
        minOrderFee = PostNumberInput.init(),
        meetLocation = PostMeetLocationInput.init(),
        shortAddress = PostStringInput.init(),
        images = [];
}

class PostStringInput {
  String value;
  bool isValid;
  String stateMessage;

  PostStringInput({
    required this.value,
    required this.isValid,
    required this.stateMessage,
  });

  PostStringInput copyWith({
    String? value,
    bool? isValid,
    String? stateMessage,
  }) =>
      PostStringInput(
        value: value ?? this.value,
        isValid: isValid ?? this.isValid,
        stateMessage: stateMessage ?? this.stateMessage,
      );

  PostStringInput.init()
      : value = "",
        isValid = false,
        stateMessage = "";
}

class PostNumberInput {
  String value;
  bool isValid;
  String stateMessage;

  PostNumberInput({
    required this.value,
    required this.isValid,
    required this.stateMessage,
  });

  PostNumberInput copyWith({
    String? value,
    bool? isValid,
    String? stateMessage,
  }) =>
      PostNumberInput(
        value: value ?? this.value,
        isValid: isValid ?? this.isValid,
        stateMessage: stateMessage ?? this.stateMessage,
      );

  PostNumberInput.init()
      : value = "",
        isValid = false,
        stateMessage = "";
}

// class PostMeetLocationInput {
//   String address;
//   double latitude;
//   double longitude;
//
//   PostMeetLocationInput({
//     required this.address,
//     required this.latitude,
//     required this.longitude,
//   });
//
//   PostMeetLocationInput copyWith({
//     String? address,
//     double? latitude,
//     double? longitude,
//   }) =>
//       PostMeetLocationInput(
//         address: address ?? this.address,
//         latitude: latitude ?? this.latitude,
//         longitude: longitude ?? this.longitude,
//       );
// }

class PostMeetLocationInput {
  PostMeetLocation? value;
  bool isValid;
  String stateMessage;

  PostMeetLocationInput({
    this.value,
    required this.isValid,
    required this.stateMessage,
  });

  PostMeetLocationInput copyWith({
    PostMeetLocation? value,
    bool? isValid,
    String? stateMessage,
  }) =>
      PostMeetLocationInput(
        value: value,
        isValid: isValid ?? this.isValid,
        stateMessage: stateMessage ?? this.stateMessage,
      );

  PostMeetLocationInput.init() : value = null, isValid = false, stateMessage = "";
}

class PostMeetLocation {
  String address;
  double latitude;
  double longitude;

  PostMeetLocation({
    required this.address,
    required this.latitude,
    required this.longitude,
  });

  PostMeetLocation copyWith({
    String? address,
    double? latitude,
    double? longitude,
  }) =>
      PostMeetLocation(
        address: address ?? this.address,
        latitude: latitude ?? this.latitude,
        longitude: longitude ?? this.longitude,
      );


}
