import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/model/user_info_response_model.dart';
import 'package:together_delivery_app/user/repository/user_repository.dart';
import 'package:together_delivery_app/user/repository/user_repository_impl.dart';

final myAccountLoadViewModelProvider =
    AsyncNotifierProvider<MyAccountLoadViewModel, UserInfoResponseModel>(
  MyAccountLoadViewModel.new,
);

class MyAccountLoadViewModel extends AsyncNotifier<UserInfoResponseModel> {
  late final UserRepository userRepository;

  @override
  Future<UserInfoResponseModel> build() async {
    userRepository = ref.watch(userRepositoryImplProvider);
    return await userRepository.getUserInfo();
  }
}
