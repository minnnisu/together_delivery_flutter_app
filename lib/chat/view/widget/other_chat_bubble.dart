import 'package:flutter/material.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';

class OtherChatBubble extends StatelessWidget {
  final String chatMessage;
  final String sender;
  final DateTime createdAt;

  const OtherChatBubble({
    super.key,
    required this.chatMessage,
    required this.sender,
    required this.createdAt,
  });

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 12,
          ),
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle, // 둥근 모양
              border: Border.all(
                // 보더 설정
                color: AppColor.gray90, // 보더 색상
                width: 0.5, // 보더 두께
              ),
              image: DecorationImage(
                image: AssetImage(
                  'assets/user_avatar.png',
                ),
                fit: BoxFit.cover, // 이미지가 영역을 채우도록 설정
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sender,
                style: textTheme.bodyMedium!.copyWith(),
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColor.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1), // 그림자 색상
                            blurRadius: 1, // 흐림 정도
                            spreadRadius: 0.1, // 그림자 확산 정도
                            offset: Offset(1, 1), // 그림자의 x, y 축 위치
                          ),
                        ]),
                    child: Text(
                      chatMessage,
                      style: textTheme.bodyMedium!.copyWith(),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "${createdAt.hour.toString().padLeft(2, '0')}:${createdAt.minute.toString().padLeft(2, '0')}",
                    style:
                        textTheme.bodyMedium!.copyWith(color: AppColor.gray60),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
