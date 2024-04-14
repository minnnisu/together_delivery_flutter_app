import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/post/view/widget/postInputForm/postInputForm.dart';

class PostEditScreen extends StatefulWidget {
  const PostEditScreen({super.key});

  @override
  State<PostEditScreen> createState() => _PostEditScreenState();
}

class _PostEditScreenState extends State<PostEditScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("게시물 등록"), centerTitle: true,),
      body: PostInputForm(),
    );
  }
}
