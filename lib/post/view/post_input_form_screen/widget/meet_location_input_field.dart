import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/const/post_input_form_field_type.dart';
import 'package:together_delivery_app/post/view/post_input_form_screen/widget/post_text_input_field.dart';

import '../provider/post_input_form_provider.dart';

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
    final postInputModel = ref.watch(postInputFormProvider);
    final PostInputRead = ref.read(postInputFormProvider.notifier);

    return Container(
      width: width,
      padding: EdgeInsets.only(bottom: 6),
      margin: EdgeInsets.only(bottom: marginBottomSize),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "주소",
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (postInputModel.meetLocation == null) {
                      Navigator.pushNamed(context, '/location/set');
                    } else {
                      PostInputRead.updateFieldValue(
                          PostInputFormFieldType.meetLocation, null);
                    }
                  },
                  child: Text(
                    postInputModel.meetLocation == null ? "추가" : "삭제",
                    textAlign: TextAlign.end,
                    style: TextStyle(fontSize: 16, color: Color(0xff874CCC)),
                  ),
                ),
              ],
            ),
          ),
          postInputModel.meetLocationErrMsg != null
              ? Text(
            postInputModel.meetLocationErrMsg!,
            style: TextStyle(
              color: Color(0xffcc4747),
            ),
          )
              : Container(),
          postInputModel.meetLocation != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Text(
                        postInputModel.meetLocation!.address,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    PostTextInputField(
                      type: PostInputFormFieldType.addressDescription,
                      fieldName: "위치 설명",
                      hintText: "예) 한끼 빌라 앞",
                      marginBottomSize: 12,
                      errorText: postInputModel.addressDescriptionErrMsg,
                    ),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
