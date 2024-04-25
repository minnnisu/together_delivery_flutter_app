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

class PostTextInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final int maxLines;
  final double width;
  final PostInputFormFieldType type;
  final String? errorText;

  const PostTextInputField(
      {super.key,
      required this.type,
      required this.fieldName,
      this.marginBottomSize = 0,
      this.hintText,
      this.maxLines = 1,
      this.errorText,
      this.width = double.infinity});

  void onChange(WidgetRef ref, String value) {
    ref.read(postInputFormProvider.notifier).updateFieldValue(type, value);
  }

  void onTap(WidgetRef ref) {
    ref.read(postInputFormProvider.notifier).checkFocusedFieldChange(type);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              fieldName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              errorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffcc4747),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffcc4747),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              errorStyle: TextStyle(color: Color(0xffcc4747)),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xffd3cfcf),
              ),
              errorText: errorText,
            ),
            onTap: () => onTap(ref),
            onChanged: (value) => onChange(ref, value),
          ),
        ],
      ),
    );
  }
}

class PostNumberInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final double width;
  final PostInputFormFieldType type;
  final String? errorText;

  const PostNumberInputField({
    super.key,
    required this.type,
    required this.fieldName,
    this.marginBottomSize = 0,
    this.hintText,
    this.errorText,
    this.width = double.infinity,
  });

  void onChange(WidgetRef ref, String value) {
    ref.read(postInputFormProvider.notifier).updateFieldValue(type, value);
  }

  void onTap(WidgetRef ref) {
    ref.read(postInputFormProvider.notifier).checkFocusedFieldChange(type);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              fieldName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffd5d5d5)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.only(right: 12),
            child: Row(
              children: [
                Flexible(
                  child: TextFormField(
                    textAlign: TextAlign.end,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: 12,
                        right: 0,
                        top: 6,
                        bottom: 6,
                      ),
                      focusedBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: hintText,
                      hintStyle: TextStyle(
                        color: Color(0xffd3cfcf),
                      ),
                      border: InputBorder.none,
                    ),
                    onTap: () => onTap(ref),
                    onChanged: (value) => onChange(ref, value),
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(top: 1),
                    child: Text(
                      "원",
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
          ),
          errorText != null
              ? Container(
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
                  child: Text(
                    errorText!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffcc4747),
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

class PostDropdownInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final int maxLines;
  final double width;
  final PostInputFormFieldType type;

  void onChange(WidgetRef ref, RestaurantCategory? value) {
    if (value == null) {
      ref.read(postInputFormProvider.notifier).updateFieldValue(
          type,
          ref
              .read(postInputFormProvider.notifier)
              .getRestaurantCategoryList()
              .first);
      return;
    }
    ref.read(postInputFormProvider.notifier).updateFieldValue(type, value);
  }

  const PostDropdownInputField(
      {super.key,
      required this.fieldName,
      required this.type,
      this.marginBottomSize = 0,
      this.hintText,
      this.maxLines = 1,
      this.width = double.infinity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              fieldName,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffd5d5d5)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: DropdownButton<RestaurantCategory>(
              borderRadius: BorderRadius.circular(12),
              menuMaxHeight: 200,
              isExpanded: true,
              value: ref.watch(postInputFormProvider).restaurantCategory,
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) => onChange(ref, value),
              items: ref
                  .read(postInputFormProvider.notifier)
                  .getRestaurantCategoryList()
                  .map<DropdownMenuItem<RestaurantCategory>>(
                      (RestaurantCategory value) {
                return DropdownMenuItem<RestaurantCategory>(
                  value: value,
                  child: Text(value.name),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class MeetLocationInputField extends ConsumerWidget {
  final double marginBottomSize;
  final double width;
  final String? errorText;

  const MeetLocationInputField(
      {super.key,
      this.marginBottomSize = 0,
      this.errorText,
      this.width = double.infinity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postEditModel = ref.watch(postInputFormProvider);

    return Container(
      width: width,
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Text(
              "만남장소",
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
          GestureDetector(onTap:() => Navigator.pushNamed(context, '/location/set'),
            child: Container(
              width: width,
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xffd5d5d5),
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(postEditModel.location, style: TextStyle(fontSize: 16),),
            ),
          )
        ],
      ),
    );
  }
}
