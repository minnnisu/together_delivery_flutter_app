import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/const/errorCode.dart';
import '../../../../common/exception/SuccessFailure.dart';
import '../../../../common/exception/customException.dart';
import '../model/post_save_response_model.dart';
import '../provider/post_input_form_provider.dart';

class PostInputFormSubmitBtn extends ConsumerWidget {
  const PostInputFormSubmitBtn({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth,
      child: TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(vertical: 8),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              color: Color(0xffcbcbcb),
            ),
          ),
        ),
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
                return;
              }
            }
          }
        },
        child: Text(
          "등록",
          style: TextStyle(
            color: Color(0xff4f4f4f),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
