import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/comment_view/provider/comment_reply_input_provider.dart';

class CommentReplyInput extends ConsumerWidget {
  final inputBackgroundColor = Color(0xfff2f2f2);

  CommentReplyInput({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final commentReplyInput = ref.watch(commentReplyInputProvider);
    final commentReplyInputRead = ref.watch(commentReplyInputProvider.notifier);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 2.0),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: inputBackgroundColor
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: TextFormField(
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
              ),
            ),
            IconButton(
              icon: Icon(Icons.send,),
              iconSize: 20.0,
              onPressed: () {
                commentReplyInputRead.sendToServer();
              },
            )
          ],
        ),
      ),
    );
  }
}
