import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../user/model/user_info_response_model.dart';
import '../../user/repository/user_repository.dart';
import '../../user/repository/user_repository_impl.dart';


final splashViewModelProvider =
    AsyncNotifierProvider<SplashViewModel, UserInfoResponseModel>(
  SplashViewModel.new,
);

class SplashViewModel extends AsyncNotifier<UserInfoResponseModel> {
  late UserRepository userRepository;

  @override
  Future<UserInfoResponseModel> build() async {
    userRepository = ref.watch(userRepositoryImplProvider);
    return await userRepository.getUserInfo();
  }
}
