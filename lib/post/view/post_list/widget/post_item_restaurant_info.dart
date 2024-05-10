import 'package:flutter/cupertino.dart';
import 'package:together_delivery_app/common/const/restaurantCategory.dart';

import '../model/post_summar_model.dart';

class PostItemRestaurantInfo extends StatelessWidget {
  final PostSummaryModel post;

  const PostItemRestaurantInfo(
    this.post, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                      child: Text("카테고리", style: TextStyle(color: Color(0xff9b9b9b)))),
                  Text(RestaurantCategory.getCategoryFromString(post.categoryCode)
                      .name),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: Row(
                children: [
                  Container(
                      width: 80,
                      child: Text("만남장소", style: TextStyle(color: Color(0xff9b9b9b)))),
                  Text(post.meetLocation.shortAddress),
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
                        child: Text("최소 배달 팁", style: TextStyle(color: Color(0xff9b9b9b)))),
                    Text(post.deliveryFee.toString() + "원")
                  ],
                ),
                Row(
                  children: [
                    Container(
                        width: 90,
                        child: Text("최소 주문금액", style: TextStyle(color: Color(0xff9b9b9b)))),
                    Text(post.minOrderFee.toString() + "원")
                  ],
                ),
              ],
            )
           
          ],
        ));
  }
}
