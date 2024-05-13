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
import 'package:together_delivery_app/post/view/post_input_form_screen/widget/post_image_input_field.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/widget/post_input_form_submit_btn.dart';
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
        PostInputCategoryWrapper(
            categoryName: "가게 정보",
            childrenWidget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PostDropdownInputField(
                      type: PostInputFormFieldType.restaurantCategory,
                      width: screenWidth * 0.45,
                      fieldName: "카테고리",
                      marginBottomSize: 16,
                    ),
                    PostTextInputField(
                      type: PostInputFormFieldType.restaurantName,
                      width: screenWidth * 0.45,
                      fieldName: "가게이름",
                      hintText: "한끼 치킨",
                      marginBottomSize: 16,
                      errorText: postEditModel.restaurantNameErrMsg,
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
                      fieldName: "최소주문금액",
                      marginBottomSize: 16,
                      errorText: postEditModel.minOrderFeeErrMsg,
                    ),
                    PostNumberInputField(
                      type: PostInputFormFieldType.deliveryFee,
                      width: screenWidth * 0.45,
                      fieldName: "배달비",
                      marginBottomSize: 12,
                      errorText: postEditModel.deliveryFeeErrMsg,
                    ),
                  ],
                ),
              ],
            )),
        PostInputCategoryWrapper(
          categoryName: "만남 장소",
          childrenWidget: MeetLocationInputField(
            marginBottomSize: 6,
          ),
        ),
        PostInputCategoryWrapper(
          categoryName: "추가 정보",
          childrenWidget: Column(
            children: [
              PostTextInputField(
                type: PostInputFormFieldType.content,
                fieldName: "내용",
                hintText: "내용을 입력해주세요.",
                maxLines: 5,
                marginBottomSize: 12,
                errorText: postEditModel.contentErrMsg,
              ),
              PostImageInputField(
                marginBottomSize: 16,
              ),
            ],
          ),
        ),
        PostInputFormSubmitBtn(),
      ],
    );
  }
}

class PostInputCategoryWrapper extends StatelessWidget {
  final String categoryName;
  final Widget childrenWidget;

  const PostInputCategoryWrapper(
      {required this.categoryName, required this.childrenWidget, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(categoryName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          ),
          childrenWidget
        ],
      ),
    );
  }
}
