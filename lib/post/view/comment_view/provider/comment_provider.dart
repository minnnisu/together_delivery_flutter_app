import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_repository.dart';

final commentProvider = StateNotifierProvider<CommentNotifier,
    List<CommentModel>>((ref) {
  final commentRepository = ref.watch(commentRepositoryProvider);

  return CommentNotifier(commentRepository);
});

class CommentNotifier extends StateNotifier<List<CommentModel>> {
  final CommentRepository commentRepository;

  CommentNotifier(this.commentRepository) : super([]);

  void addNewComment(List<CommentModel> comments) {
    state = [...state, ...comments];
  }

  void removeAllComment(){
    state = [];
  }
}