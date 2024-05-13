import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:multi_image_picker_plus/multi_image_picker_plus.dart';

import '../provider/post_input_form_provider.dart';

class PostImageInputField extends ConsumerWidget {
  final double marginBottomSize;

  const PostImageInputField({
    super.key,
    this.marginBottomSize = 0,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenWidth = MediaQuery.of(context).size.width;
    final postEditModel = ref.watch(postInputFormProvider);
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            ref
                .read(postInputFormProvider.notifier)
                .loadAssets(context); //getImage 함수를 호출해서 갤러리에서 사진 가져오기
          },
          child: Container(
            width: screenWidth,
            padding: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "사진 등록",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "추가",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 16, color: Color(0xff874CCC)),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: marginBottomSize),
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, crossAxisSpacing: 5, mainAxisSpacing: 5),
            itemCount: postEditModel.images.length,
            itemBuilder: (context, index) {
              Asset asset = postEditModel.images[index];
              return Stack(
                children: [
                  Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetThumbImageProvider(
                          asset,
                          width: 300,
                          height: 300,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
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
            },
          ),
        ),
      ],
    );
  }
}
