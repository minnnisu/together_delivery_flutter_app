import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/constant/restaurantCategory.dart';

class PostInputForm extends StatelessWidget {
  const PostInputForm({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PostTextInputField(
              fieldName: "제목",
              hintText: "제목을 입력해주세요.",
              marginBottomSize: 12,
            ),
            PostTextInputField(
              fieldName: "내용",
              hintText: "내용을 입력해주세요.",
              maxLines: 5,
              marginBottomSize: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PostDropdownInputField(
                  width: screenWidth * 0.45,
                  fieldName: "카테고리",
                  marginBottomSize: 12,
                ),
                PostTextInputField(
                  width: screenWidth * 0.45,
                  fieldName: "가게이름",
                  hintText: "한끼 치킨",
                  marginBottomSize: 12,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PostNumberInputField(
                  width: screenWidth * 0.45,
                  fieldName: "최소배달금액",
                  marginBottomSize: 12,
                ),
                PostNumberInputField(
                  width: screenWidth * 0.45,
                  fieldName: "배달비",
                  marginBottomSize: 12,
                ),
              ],
            ),
            PostTextInputField(
              fieldName: "만남장소",
              marginBottomSize: 12,
            ),
          ],
        ),
      ),
    );
  }
}

class PostTextInputField extends ConsumerWidget {
  final String fieldName;
  final double marginBottomSize;
  final String? hintText;
  final int maxLines;
  final double width;

  const PostTextInputField(
      {super.key,
      required this.fieldName,
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
          TextFormField(
            maxLines: maxLines,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Color(0xffd3cfcf),
              ),
              // errorText: getErrorText(ref),
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
            ),
            // onTap: () => onTap(ref),
            // onChanged: (value) => onChange(ref, value),
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

  const PostNumberInputField(
      {super.key,
      required this.fieldName,
      this.marginBottomSize = 0,
      this.hintText,
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
                      hintText: hintText,
                      hintStyle: TextStyle(
                        color: Color(0xffd3cfcf),
                      ),
                      // errorText: getErrorText(ref),
                      border: InputBorder.none,
                    ),
                    // onTap: () => onTap(ref),
                    // onChanged: (value) => onChange(ref, value),
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
          )
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

  const PostDropdownInputField(
      {super.key,
      required this.fieldName,
      this.marginBottomSize = 0,
      this.hintText,
      this.maxLines = 1,
      this.width = double.infinity});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const List<RestaurantCategory> list = RestaurantCategory.values;
    RestaurantCategory dropdownValue = list.first;
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
              value: dropdownValue,
              elevation: 16,
              underline: Container(
                height: 2,
              ),
              onChanged: (value) {},
              items: list.map<DropdownMenuItem<RestaurantCategory>>(
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
