import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/common/config/color/app_color.dart';
import 'package:together_delivery_app/common/routes/routes.dart';

import 'common/config/text_theme/custom_text_theme.dart';

// 지도 초기화하기
Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(
    clientId: dotenv.env['NAVER_APPLICATION_CLIENT_ID'], // 클라이언트 ID 설정
    onAuthFailed: (e) => print("네이버맵 인증오류 : $e, name: onAuthFailed"),
  );
}

void main() async {
  await dotenv.load(fileName: 'assets/config/.env');
  await _initialize();
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Together Delivery App',
      theme: ThemeData(
        textTheme: customTextTheme,
        fontFamily: "pretendard",
        appBarTheme: AppBarTheme(
          color: Colors.white,
          centerTitle: true,
          titleTextStyle: textTheme.headlineSmall!
              .copyWith(color: AppColor.black, fontWeight: FontWeight.w600),
        ),
        primaryColor: const Color(0xFFD11D5C),
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: routes,
    );
  }
}
