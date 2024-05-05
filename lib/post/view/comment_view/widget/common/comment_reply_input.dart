import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/model/comment_reply_input_model.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_reply_input_provider.dart';

class CommentReplyInput extends ConsumerStatefulWidget {
  final int postId;

  const CommentReplyInput({required this.postId, super.key});

  @override
  ConsumerState<CommentReplyInput> createState() => _CommentReplyInputState();
}

class _CommentReplyInputState extends ConsumerState<CommentReplyInput> {
  final inputBackgroundColor = Color(0xfff2f2f2);
  final textEditController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final commentReplyInput = ref.watch(commentReplyInputProvider);
    final commentReplyInputRead = ref.watch(commentReplyInputProvider.notifier);

    // build가 완료되고 실행
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (commentReplyInput.commentReplyInputModel is InitStatusInput) {
        commentReplyInputRead.updateCommentReplyInputModelBase(
            CommentAppendInput(postId: widget.postId));
      }
    });

    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(16)),
            color: inputBackgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: TextFormField(
                controller: textEditController,
                decoration: InputDecoration(
                  hintText: commentReplyInput.placeholder,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: inputBackgroundColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: inputBackgroundColor)),
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      borderSide: BorderSide(color: inputBackgroundColor)),
                ),
                onChanged: (value) {
                  commentReplyInputRead.updateContent(value);
                },
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.send,
              ),
              iconSize: 20.0,
              onPressed: () async {
                final result = await commentReplyInputRead.sendToServer();
                if (result) {
                  textEditController.text = "";
                  commentReplyInputRead.updateContent("");
                }
              },
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    textEditController.dispose();
    super.dispose();
  }
}
