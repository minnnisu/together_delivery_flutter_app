import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/routes/routes.dart';

import 'di/di_setup.dart';

void main() {
  configureDependencies();
  runApp(const ProviderScope(child: MyApp(),));
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



