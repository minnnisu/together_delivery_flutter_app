import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_page_provider.dart';

class PostCommentError extends ConsumerWidget {
  const PostCommentError({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(child: Text(ref.watch(commentPageProvider).bottomMessage, style: TextStyle(color: Color(
        0xff777777)),),);
  }
}
