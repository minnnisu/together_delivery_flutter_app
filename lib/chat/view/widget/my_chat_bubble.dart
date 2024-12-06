import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class MyChatBubble extends StatelessWidget {
  final String chatMessage;
  final DateTime createdAt;

  const MyChatBubble({
    super.key,
    required this.chatMessage,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2, '0')}",
            style: textTheme.bodyMedium!.copyWith(color: AppColor.gray60),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.primaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1), // 그림자 색상
                  blurRadius: 1, // 흐림 정도
                  spreadRadius: 0.1, // 그림자 확산 정도
                  offset: Offset(1, 1), // 그림자의 x, y 축 위치
                ),
              ],
            ),
            child: Text(
              chatMessage,
              style: textTheme.bodyMedium!.copyWith(color: AppColor.white),
            ),
          ),
          SizedBox(
            width: 12,
          )
        ],
      ),
    );
  }
}
