import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostEditImageField extends StatefulWidget {
  const PostEditImageField({super.key});

  @override
  State<PostEditImageField> createState() => _PostEditImageFieldState();
}

class _PostEditImageFieldState extends State<PostEditImageField> {
  XFile? _image; //이미지를 담을 변수 선언
  final ImagePicker picker = ImagePicker(); //ImagePicker 초기화

  //이미지를 가져오는 함수
  Future getImage(ImageSource imageSource) async {
    //pickedFile에 ImagePicker로 가져온 이미지가 담긴다.
    final XFile? pickedFile = await picker.pickImage(source: imageSource);
    if (pickedFile != null) {
      setState(() {
        _image = XFile(pickedFile.path); //가져온 이미지를 _image에 저장
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {
            getImage(ImageSource.gallery); //getImage 함수를 호출해서 갤러리에서 사진 가져오기
          },
          child: Text("갤러리"),
        ),
        _image != null
            ? Container(
                width: 300,
                height: 300,
                child: Image.file(File(_image!.path)), //가져온 이미지를 화면에 띄워주는 코드
              )
            : Container(
                width: 300,
                height: 300,
                color: Colors.grey,
              ),
      ],
    );
  }
}
