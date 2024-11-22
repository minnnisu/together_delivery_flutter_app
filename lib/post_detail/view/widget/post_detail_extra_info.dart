import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/util/money_convertor.dart';
import 'package:together_delivery_app/post_detail/model/post_detail_response_model.dart';

class PostDetailExtraInfo extends ConsumerWidget {
  final Post post;

  const PostDetailExtraInfo(this.post, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "가게 정보",
            style: textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w600,
            ),
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
                          width: 90,
                          child: Text(
                            "카테고리",
                            style: textTheme.bodySmall!.copyWith(
                              color: Color(0xff9b9b9b),
                            ),
                          ),
                        ),
                        Text(
                          RestaurantCategory.getCategoryFromString(
                                  post.categoryCode)
                              .korean,
                          style: textTheme.bodySmall!.copyWith(),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 90,
                            child: Text(
                              "최소 배달 팁",
                              style: textTheme.bodySmall!.copyWith(
                                color: Color(0xff9b9b9b),
                              ),
                            ),
                          ),
                          Text(
                            MoneyConvertor.addCommasToNumber(post.deliveryFee) +
                                "원",
                            style: textTheme.bodySmall!.copyWith(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 90,
                            child: Text(
                              "최소 주문금액",
                              style: textTheme.bodySmall!.copyWith(
                                color: Color(0xff9b9b9b),
                              ),
                            ),
                          ),
                          Text(
                            MoneyConvertor.addCommasToNumber(post.minOrderFee) +
                                "원",
                            style: textTheme.bodySmall!.copyWith(),
                          )
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
