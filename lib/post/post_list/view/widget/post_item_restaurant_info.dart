import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';
import 'package:together_delivery_app/common/util/money_convertor.dart';

import '../../model/api/post_list_response.dart';


class PostItemRestaurantInfo extends StatelessWidget {
  final Post post;

  const PostItemRestaurantInfo(
    this.post, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border:
                Border(left: BorderSide(color: Color(0xffe1e1e1), width: 2))),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Container(
                      width: 80,
                      child: Text("카테고리",
                          style: textTheme.bodySmall!
                              .copyWith(color: AppColor.gray60))),
                  Text(
                    RestaurantCategory.getCategoryFromString(post.categoryCode)
                        .korean,
                    style: textTheme.bodySmall!.copyWith(color: AppColor.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Container(
                      width: 80,
                      child: Text("만남장소",
                          style: textTheme.bodySmall!
                              .copyWith(color: AppColor.gray60))),
                  Text(
                    post.meetLocation.shortAddress != null
                        ? post.meetLocation.shortAddress
                        : "",
                    style: textTheme.bodySmall!.copyWith(color: AppColor.black),
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
                        width: 80,
                        child: Text("최소 배달 팁",
                            style: textTheme.bodySmall!
                                .copyWith(color: AppColor.gray60))),
                    Text(
                      MoneyConvertor.addCommasToNumber(post.deliveryFee) + "원",
                      style:
                          textTheme.bodySmall!.copyWith(color: AppColor.black),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                        width: 90,
                        child: Text("최소 주문금액",
                            style: textTheme.bodySmall!
                                .copyWith(color: AppColor.gray60))),
                    Text(
                      MoneyConvertor.addCommasToNumber(post.minOrderFee) + "원",
                      style:
                          textTheme.bodySmall!.copyWith(color: AppColor.black),
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
