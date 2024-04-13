import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/constant/restaurantCategory.dart';
import 'package:together_delivery_app/post/model/postDetailModel.dart';
import 'package:together_delivery_app/post/provider/postDetailNotifier.dart';

class PostExtraInfo extends ConsumerWidget {
  const PostExtraInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postDetailModel =
        ref.watch(postDetailNotifierProvider) as PostDetailModel;

    return PostExtraRowWrapper(
      [
        PostExtraRow(
          [
            PostExtraInfoItem(
              itemKey: "카테고리",
              itemValue: RestaurantCategory.getCategoryFromString(
                      postDetailModel.categoryCode)
                  .name,
            ),
            PostExtraInfoItem(
              itemKey: "가게이름",
              itemValue: postDetailModel.restaurantName,
            ),
            PostExtraInfoItem(
              itemKey: "최소배달금액",
              itemValue: "${postDetailModel.minOrderFee}원",
            ),
          ],
        ),
        PostExtraRow(
          [
            PostExtraInfoItem(
              itemKey: "배달비",
              itemValue: "${postDetailModel.deliveryFee}원",
            ),
            PostExtraInfoItem(
              itemKey: "만남장소",
              itemValue: postDetailModel.location,
            ),
          ],
        ),
      ],
    );
  }
}

class PostExtraRowWrapper extends StatelessWidget {
  final List<PostExtraRow> postExtraRows;

  const PostExtraRowWrapper(this.postExtraRows, {super.key});

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

class PostExtraRow extends StatelessWidget {
  final List<PostExtraInfoItem> rowItems;

  const PostExtraRow(this.rowItems, {super.key});

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

class PostExtraInfoItem extends StatelessWidget {
  final String itemKey;
  final String itemValue;

  const PostExtraInfoItem(
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
