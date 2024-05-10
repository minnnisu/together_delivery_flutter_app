import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/post_detail_response_model.dart';
import '../provider/post_detail_provider.dart';

class PostDetailRestaurantName extends ConsumerWidget {
  const PostDetailRestaurantName({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
    ref.watch(postDetailProvider) as PostDetailResponseModel;

    return Padding(
      padding: const EdgeInsets.only(top: 6),
      child: Text(postDetailModel.restaurantName, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
    );
  }
}
