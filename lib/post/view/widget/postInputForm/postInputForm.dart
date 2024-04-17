import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';
import 'package:together_delivery_app/constant/restaurantCategory.dart';
import 'package:together_delivery_app/post/const/postEditFieldType.dart';
import 'package:together_delivery_app/post/provider/postEditNotifier.dart';

class PostInputForm extends ConsumerWidget {
  const PostInputForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final postEditModel = ref.watch(postEditProvider);


    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
      children: [
        PostTextInputField(
            type: PostEditFieldType.title,
            fieldName: "제목",
            hintText: "제목을 입력해주세요.",
            marginBottomSize: 12,
            errorText: postEditModel.titleErrMsg),
        PostTextInputField(
          type: PostEditFieldType.content,
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
              type: PostEditFieldType.restaurantCategory,
              width: screenWidth * 0.45,
              fieldName: "카테고리",
              marginBottomSize: 12,
            ),
            PostTextInputField(
              type: PostEditFieldType.restaurantName,
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
                type: PostEditFieldType.minOrderFee,
                width: screenWidth * 0.45,
                fieldName: "최소배달금액",
                marginBottomSize: 12,
                errorText: postEditModel.minOrderFeeErrMsg),
            PostNumberInputField(
                type: PostEditFieldType.deliveryFee,
                width: screenWidth * 0.45,
                fieldName: "배달비",
                marginBottomSize: 12,
                errorText: postEditModel.deliveryFeeErrMsg),
          ],
        ),
        PostTextInputField(
          type: PostEditFieldType.location,
          fieldName: "만남장소",
          marginBottomSize: 12,
          errorText: postEditModel.locationErrMsg,
        ),
        ElevatedButton(
          onPressed: () {
            ref.read(postEditProvider.notifier).loadAssets(context); //getImage 함수를 호출해서 갤러리에서 사진 가져오기
          },
          child: Text("갤러리"),
        ),
        GridView.builder(
          shrinkWrap : true,
          physics : NeverScrollableScrollPhysics(),
          gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: postEditModel.images.length,
          itemBuilder: (context, index) {
            Asset asset = postEditModel.images[index];
            return AssetThumb(
                asset: asset, width: 300, height: 300);
          }
        ),
        TextButton(
          onPressed: () => ref.read(postEditProvider.notifier).registerPost(),
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
  final PostEditFieldType type;
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
    ref.read(postEditProvider.notifier).updateFieldValue(type, value);
  }

  void onTap(WidgetRef ref) {
    ref.read(postEditProvider.notifier).checkFocusedFieldChange(type);
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
  final PostEditFieldType type;
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
    ref.read(postEditProvider.notifier).updateFieldValue(type, value);
  }

  void onTap(WidgetRef ref) {
    ref.read(postEditProvider.notifier).checkFocusedFieldChange(type);
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
  final PostEditFieldType type;

  void onChange(WidgetRef ref, RestaurantCategory? value) {
    if (value == null) {
      ref.read(postEditProvider.notifier).updateFieldValue(
          type,
          ref
              .read(postEditProvider.notifier)
              .getRestaurantCategoryList()
              .first);
      return;
    }
    ref.read(postEditProvider.notifier).updateFieldValue(type, value);
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
              value: ref.watch(postEditProvider).restaurantCategory,
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) => onChange(ref, value),
              items: ref
                  .read(postEditProvider.notifier)
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
