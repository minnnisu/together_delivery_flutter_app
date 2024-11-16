import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/widget/post_input_form.dart';

class PostInputFormScreen extends StatefulWidget {
  const PostInputFormScreen({super.key});

  @override
  State<PostInputFormScreen> createState() => _PostInputFormScreenState();
}

class _PostInputFormScreenState extends State<PostInputFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시물 등록")),
      body: PostInputForm(),
    );
  }
}
