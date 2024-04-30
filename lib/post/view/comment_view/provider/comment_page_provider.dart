import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/const/comment_page_status_type.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_common_model.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_reply_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_repository.dart';

final commentPageProvider =
    StateNotifierProvider.autoDispose<CommentPageNotifier, CommentReplyModel>((ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);
  return CommentPageNotifier(commentRepository);
});

class CommentPageNotifier extends StateNotifier<CommentReplyModel> {
  final CommentRepository commentRepository;

  CommentPageNotifier(this.commentRepository)
      : super(const CommentReplyModel(
          status: CommentPageStatusType.Loading,
          metaData: MetaData(totalPage: 0, currentPage: 0),
          comments: [],
        ));

  Future<void> fetchPage(int postId) async {
    try {
      if (state.status == CommentPageStatusType.NoMore) {
        return;
      }
      state = state.copyWith(status: CommentPageStatusType.Loading);

      final commentResponse = await commentRepository.getCommentList(
          state.metaData.currentPage + 1, postId);
      final responseMetaData = commentResponse.metaData;
      final responseComments = commentResponse.comments;

      List<Comment> comments = responseComments.map((e) {
        CommentPageStatusType statusType = CommentPageStatusType.Success;
        if (responseMetaData.currentPage >= responseMetaData.totalPage) {
          statusType = CommentPageStatusType.NoMore;
        }

        return Comment(
            comment: e.comment,
            reply: Reply(
                metaData: e.reply.metaData,
                replies: e.reply.replies,
                status: statusType));
      }).toList();

      state = state.copyWith(
        comments: comments,
        metaData: MetaData(
          totalPage: responseMetaData.totalPage,
          currentPage: responseMetaData.currentPage,
        ),
        status: CommentPageStatusType.Success,
      );

      if (responseMetaData.currentPage >= responseMetaData.totalPage) {
        state = state.copyWith(status: CommentPageStatusType.NoMore);
      }
    } catch (error) {
      state = state.copyWith(
        status: CommentPageStatusType.Error,
      );
    }
  }

// Future<void> fetchFirstPage(int postId) async {
//   try {
//     commentRead.removeAllComment();
//     state = state.copyWith(status: CommentPageStatusType.Loading);
//     final response = await commentRepository.getCommentList(1, postId);
//     final metaData = response.metaData;
//     final comments = response.comments;
//
//     commentRead.addNewComment(comments);
//
//     if (metaData.currentPage >= metaData.totalPage) {
//       state = state.copyWith(status: CommentPageStatusType.NoMore);
//     } else {
//       state = state.copyWith(status: CommentPageStatusType.Success);
//     }
//     state = state.copyWith(currentPage: 1);
//   } catch (error) {
//     state = state.copyWith(
//       status: CommentPageStatusType.Error,
//       bottomMessage: "댓글을 불러오는 과정에서 문제가 발생하였습니다.",
//     );
//   }
// }
}
