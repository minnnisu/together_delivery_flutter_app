import 'package:flutter/material.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/post_create_form/post_create_form.dart';
import 'package:together_delivery_app/post/new_post_create/view/widget/post_create_form/post_create_submit_button.dart';

class NewPostCreateView extends StatelessWidget {
  const NewPostCreateView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("게시물 등록"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Column(
          children: [
            Expanded(
              child: PostCreateForm(),
            ),
            PostCreateSubmitButton(),
          ],
        ),
      ),
    );
  }
}
