import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:together_delivery_app/models/TestInput.dart';
import 'package:together_delivery_app/providers/TestProvider.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}



class TestWidget extends ConsumerWidget {
  TestWidget({super.key});

  final testProvider = StateNotifierProvider((ref) => TestNotifier());


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var watch = ref.watch(testProvider) as TestInput;
    var read = ref.read(testProvider.notifier);

    ref.listen(testProvider, (previous, next) {
      print("${previous} ${next}");
    });

    return Column(
      children: [
        Text(watch.test),
        TextButton(onPressed: () async => await read.updateTest(), child: Text('업데이트'))
      ],
    );
  }
}
