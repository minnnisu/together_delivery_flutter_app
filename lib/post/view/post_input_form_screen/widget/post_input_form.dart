import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/common/const/errorCode.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/exception/SuccessFailure.dart';
import 'package:together_delivery_app/common/exception/customException.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/const/post_input_form_field_type.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/model/post_save_response_model.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/provider/post_input_form_provider.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/widget/post_dropdown_input_field.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/widget/post_number_input_field.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/widget/post_text_input_field.dart';

import 'meet_location_input_field.dart';

class PostInputForm extends ConsumerWidget {
  const PostInputForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final postEditModel = ref.watch(postInputFormProvider);

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      children: [
        PostTextInputField(
            type: PostInputFormFieldType.title,
            fieldName: "제목",
            hintText: "제목을 입력해주세요.",
            marginBottomSize: 12,
            errorText: postEditModel.titleErrMsg),
        PostTextInputField(
          type: PostInputFormFieldType.content,
          fieldName: "내용",
          hintText: "내용을 입력해주세요.",
          maxLines: 5,
          marginBottomSize: 12,
          errorText: postEditModel.contentErrMsg,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            PostDropdownInputField(
              type: PostInputFormFieldType.restaurantCategory,
              width: screenWidth * 0.45,
              fieldName: "카테고리",
              marginBottomSize: 12,
            ),
            PostTextInputField(
              type: PostInputFormFieldType.restaurantName,
              width: screenWidth * 0.45,
              fieldName: "가게이름",
              hintText: "한끼 치킨",
              marginBottomSize: 12,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostNumberInputField(
                type: PostInputFormFieldType.minOrderFee,
                width: screenWidth * 0.45,
                fieldName: "최소배달금액",
                marginBottomSize: 12,
                errorText: postEditModel.minOrderFeeErrMsg),
            PostNumberInputField(
                type: PostInputFormFieldType.deliveryFee,
                width: screenWidth * 0.45,
                fieldName: "배달비",
                marginBottomSize: 12,
                errorText: postEditModel.deliveryFeeErrMsg),
          ],
        ),
        MeetLocationInputField(),
        ElevatedButton(
          onPressed: () {
            ref
                .read(postInputFormProvider.notifier)
                .loadAssets(context); //getImage 함수를 호출해서 갤러리에서 사진 가져오기
          },
          child: Text("갤러리"),
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemCount: postEditModel.images.length,
            itemBuilder: (context, index) {
              Asset asset = postEditModel.images[index];
              return Stack(
                children: [
                  AssetThumb(
                    asset: asset,
                    width: 300,
                    height: 300,
                  ),
                  Positioned(
                    left: -10,
                    top: -10,
                    child: IconButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Color(0xff000000)),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xffffffff)),
                      ),
                      padding: EdgeInsets.zero,
                      // 패딩 설정
                      constraints: BoxConstraints(),
                      // constraints
                      onPressed: () => ref
                          .read(postInputFormProvider.notifier)
                          .deleteAssets(index),
                      icon: Icon(Icons.close),
                    ),
                  )
                ],
              );
            }),
        TextButton(
          onPressed: () async {
            final result =
                await ref.read(postInputFormProvider.notifier).registerPost();

            if (result is Success) {
              final newPostId =
                  (result as Success<PostSaveResponseModel, Exception>)
                      .value
                      .id;
              Navigator.pushReplacementNamed(context, '/postDetail',
                  arguments: newPostId);
            }

            if (result is Failure) {
              Failure<PostSaveResponseModel, Exception> failure =
                  (result as Failure<PostSaveResponseModel, Exception>);
              if (failure.exception is CustomException) {
                if ((failure.exception as CustomException).errorCode ==
                    ErrorCode.NOT_VALID_INPUT_FORM_ERROR) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("입력한 값들이 유효하지 않습니다."),
                      duration: Duration(seconds: 8),
                      margin: EdgeInsets.all(20),
                      behavior: SnackBarBehavior
                          .floating, //  required when writing margin
                    ),
                  );
                  return;
                }
              }

              print(failure.exception);
            }
          },
          child: Text("등록"),
        ),
      ],
    );
  }
}