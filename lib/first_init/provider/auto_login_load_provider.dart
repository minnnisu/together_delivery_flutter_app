import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/user/model/user/userModel.dart';
import 'package:together_delivery_app/user/provider/authNotifier.dart';

final autoLoginLoadProvider = FutureProvider<UserModelBase>((ref) async {
  final authWatch = ref.watch(authProvider.notifier);
  UserModelBase userModel = await authWatch.autoLogin();
  authWatch.updateUserModel(userModel);
  return userModel;
});