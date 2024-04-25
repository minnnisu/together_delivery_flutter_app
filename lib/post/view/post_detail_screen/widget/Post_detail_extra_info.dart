import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/constant/restaurantCategory.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/model/post_detail_response_model.dart';
import 'package:together_delivery_app/post/view/post_detail_screen/provider/post_detail_provider.dart';

class PostDetailExtraInfo extends ConsumerWidget {
  const PostDetailExtraInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
        ref.watch(postDetailProvider) as PostDetailResponseModel;

    return PostDetailExtraRowWrapper(
      [
        PostDetailExtraRow(
          [
            PostDetailExtraInfoItem(
              itemKey: "카테고리",
              itemValue: RestaurantCategory.getCategoryFromString(
                      postDetailModel.categoryCode)
                  .name,
            ),
            PostDetailExtraInfoItem(
              itemKey: "가게이름",
              itemValue: postDetailModel.restaurantName,
            ),
            PostDetailExtraInfoItem(
              itemKey: "최소배달금액",
              itemValue: "${postDetailModel.minOrderFee}원",
            ),
          ],
        ),
        PostDetailExtraRow(
          [
            PostDetailExtraInfoItem(
              itemKey: "배달비",
              itemValue: "${postDetailModel.deliveryFee}원",
            ),
            PostDetailExtraInfoItem(
              itemKey: "만남장소",
              itemValue: postDetailModel.location,
            ),
          ],
        ),
      ],
    );
  }
}

class PostDetailExtraRowWrapper extends StatelessWidget {
  final List<PostDetailExtraRow> postExtraRows;

  const PostDetailExtraRowWrapper(this.postExtraRows, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: postExtraRows),
    );
  }
}

class PostDetailExtraRow extends StatelessWidget {
  final List<PostDetailExtraInfoItem> rowItems;

  const PostDetailExtraRow(this.rowItems, {super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: rowItems,
      ),
    );
  }
}

class PostDetailExtraInfoItem extends StatelessWidget {
  final String itemKey;
  final String itemValue;

  const PostDetailExtraInfoItem(
      {required this.itemKey, required this.itemValue, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemKey,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(itemValue),
        ],
      ),
    );
  }
}
