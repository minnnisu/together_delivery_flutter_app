import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/routes/routes.dart';

// 지도 초기화하기
Future<void> _initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(
    clientId: dotenv.env['NAVER_MAP_API_KEY'], // 클라이언트 ID 설정
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffc9c9c9)),
        fontFamily: 'Pretendard',
        useMaterial3: true,
      ),
      routes: routes,
    );
  }
}
