import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/util/money_convertor.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';

import '../../../../common/const/const.dart';

class PostDetailExtraInfo extends ConsumerWidget {
  const PostDetailExtraInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
        ref.watch(postDetailProvider) as PostDetailResponseModel;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "가게 정보",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          Container(
              margin: EdgeInsets.only(top: 6),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(color: Color(0xffe1e1e1), width: 2))),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 6),
                    child: Row(
                      children: [
                        Container(
                            width: 80,
                            child: Text("카테고리",
                                style: TextStyle(color: Color(0xff9b9b9b)))),
                        Text(RestaurantCategory.getCategoryFromString(
                                postDetailModel.post.categoryCode)
                            .korean),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              width: 80,
                              child: Text("최소 배달 팁",
                                  style: TextStyle(color: Color(0xff9b9b9b)))),
                          Text(MoneyConvertor.addCommasToNumber(postDetailModel.post.deliveryFee) + "원")
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: 90,
                              child: Text("최소 주문금액",
                                  style: TextStyle(color: Color(0xff9b9b9b)))),
                          Text(MoneyConvertor.addCommasToNumber(postDetailModel.post.minOrderFee) + "원")
                        ],
                      ),
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
