import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/repository/user_repository.dart';
import 'package:together_delivery_app/user/repository/user_repository_impl.dart';

final myAccountViewModelProvider = Provider<MyAccountViewModel>((ref) {
    var userRepository = ref.watch(userRepositoryImplProvider);
    return MyAccountViewModel(userRepository);
  },
);

class MyAccountViewModel {
  final UserRepository userRepository;

  MyAccountViewModel(this.userRepository);

  Future<void> logout() async {
    await userRepository.deleteUserToken();
  }
}